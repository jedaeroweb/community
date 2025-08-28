class UsersController < ApplicationController
  load_and_authorize_resource  except: [:show]
  before_action :set_user, only: [:index, :edit, :update, :destroy]

  # GET /Users
  # GET /Users.json
  def index
    condition = { user_id: current_user }


    if session[:company_id].present?
      condition = { company_id: session[:company_id] }
    end
  end

  def my

  end

  def show
    @user = User.find(params[:id])

    params[:per_page] = 12 unless params[:per_page].present?

    condition = { user_id: @user,enable: true }
  end

  # GET /Users/complete
  def new
    @user = User.new
  end

  # GET /Users/1/edit
  def edit
  end

  # POST /Users
  # POST /Users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'Gg was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :show }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /Users/1
  # PATCH/PUT /Users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /Users/1
  # DELETE /Users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(current_user.id)
  end

  # Only allow a list of trusted parameters through.
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :current_password, :remember_me, user_pictures_attributes: [:picture])
  end
end
