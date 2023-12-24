class Admin::OrdersController < Admin::AdminController
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  # GET /orders
  # GET /orders.json
  def index
    params[:per_page] = 10 unless params[:per_page].present?

    condition = { }
    condition_sql = '1=1'
    sql_params = []

    if params[:start_date].present?
      condition_sql += " AND transaction_date>=?"
      sql_params << params[:start_date].to_date
    end

    if params[:end_date].present?
      condition_sql += " AND transaction_date<=?"
      sql_params << params[:end_date].to_date
    end

    @order_count = Order.where(condition).where(condition_sql, *sql_params).count
    @orders = Order.where(condition).where(condition_sql, *sql_params).page(params[:page]).per(params[:per_page]).order('id desc')
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
  end

  # GET /orders/complete
  def new
    params[:per_page] = 10 unless params[:per_page].present?

    @order = Order.new
    @order.order_products.build

    condition = {  enable: true }

      @product_categories = ProductCategory.where(condition)

      if params[:product_category_id]
        @product_category = ProductCategory.find(params[:product_category_id])
      else
        unless @product_categories.empty?
          @product_category = @product_categories.first
        end
    end

    @user_counts = 0

    like = false

    if params[:search_field].present? and params[:search_word].present?
      case params[:search_field]
      when 'name'
        condition_sql = 'name like ?'
        like = true
      when 'phone'
        condition_sql = 'phone like ?'
        like = true
      when 'unique_number'
        condition_sql = 'user_unique_numbers.unique_number like ?'
        like = true
      end
    end

    if like
      @user_count = User.includes(:user_anon).includes(:user_unique_number).where(condition).where(condition_sql, '%' + params[:search_word].strip + '%').count
      @users = User.select('users.*,user_anons.id as anon_id').includes(:user_anon).includes(:user_unique_number).where(condition).where(condition_sql, '%' + params[:search_word].strip + '%').page(params[:page]).per(params[:per_page]).order('id desc')
    else
      @user_count = User.includes(:user_anon).includes(:user_unique_number).where(condition).count
      @users = User.select('users.*,user_anons.id as anon_id').includes(:user_anon).includes(:user_unique_number).where(condition).page(params[:page]).per(params[:per_page]).order('id desc')
    end

    if @user_counts == 1
      @user = @users[0]
    end


    @products = Product.where(condition).order('id desc').page(params[:page]).per(params[:per_page])
  end

  # GET /orders/1/edit
  def edit
  end

  # POST /orders
  # POST /orders.json
  def create
    result = false

    begin

      @order = Order.new(order_params)
      @order.save!

      OrderAdmin.create!(:order_id => @order.id, :admin_id => current_admin.id)

      ca = calculate_account(@order.order_products, params[:payment_method])
      account = Account.create!(order_params.merge(:account_category_id => 1, :account => ca[:total_price]).except(:order_products_attributes))

      @order.order_products.each do |order_product|
        @accounts_product = AccountProduct.create!(account_id: account.id, product_id: order_product.product_id)
      end

      @accounts_order = AccountOrder.create!(:account_id => account.id, :order_id => @order.id)
      AccountPayment.create!(:account_id => account.id, :payment_id => params[:payment_method])
      @order.update(total_price: ca[:total_price], total_payment: ca[:total_price])
      result = true

      respond_to do |format|
        if result
          format.html { redirect_to new_admin_order_path, notice: 'Order was successfully created.' }
          format.json { render :show, status: :created, location: @order }
        else
          format.html { render :show }
          format.json { render json: @order.errors, status: :unprocessable_entity }
        end
      end

    rescue ActiveRecord::RecordInvalid => exception
      flash[:alert] = exception.message
      redirect_to new_admin_order_path
    end
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to new_admin_order_path, notice: 'Order was successfully updated.' }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to admin_orders_url, notice: 'Order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def calculate_account(s, payment_method)
    a = { total_price: 0 }
    if s.empty?
      return a
    end

    s.each do |ss|
      pp = ss.price * ss.quantity

      a[:total_price] += pp
    end

    return a
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_order
    @order = Order.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def order_params
    params.require(:order).permit(:user_id, :transaction_date, :price, :discount, :payment, order_products_attributes: [:product_id, :price, :quantity]).merge(branch_id: session[:branch_id])
  end
end
