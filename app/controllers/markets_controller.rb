class MarketsController < ApplicationController
  #impressionist :actions => [:show]
  load_and_authorize_resource  except: [:index, :show]
  before_action :set_market, only: [:show, :edit, :update, :destroy]

  # GET /notices
  # GET /notices.json
  def index
    params[:per_page] = 10 unless params[:per_page].present?

    condition = {  enable: true }

    @market_count = Market.where(condition).count
    @markets = Market.where(condition).page(params[:page]).per(params[:per_page]).order('id desc')
  end

  # GET /notices/1
  # GET /notices/1.json
  def show
    @comment  = Comment.build_from(@market, current_user, "")

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @market_comments }
    end
  end

  # GET /talks/new
  def new
    @market = Market.new
  end

  # GET /talks/1/edit
  def edit
  end

  # POST /talks
  # POST /talks.json
  def create
    @market = Market.new(market_params)

    respond_to do |format|
      if @market.save
        format.html { redirect_to @market, notice: 'blog was successfully created.' }
        format.json { render :show, status: :created, location: @market }
      else
        format.html { render :new }
        format.json { render json: @market.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /companies/1
  # PATCH/PUT /companies/1.json
  def update
    respond_to do |format|
      if @market.update(market_params)
        format.html { redirect_to @market, notice: 'blog was successfully updated.' }
        format.json { render :show, status: :ok, location: @market }
      else
        format.html { render :edit }
        format.json { render json: @market.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /companies/1
  # DELETE /companies/1.json
  def destroy
    @market.destroy
    respond_to do |format|
      format.html { redirect_to markets_url, notice: 'blog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_market
    @market = Market.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def market_params
    params.require(:market).permit(:title, :description, :content, talk_pictures_attributes: [:picture]).merge(user_id: current_user.id)
  end
end
