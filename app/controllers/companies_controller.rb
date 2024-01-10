class CompaniesController < ApplicationController
  impressionist :actions => [:show]
  load_and_authorize_resource  except: [:index, :show]
  before_action :set_company, only: [:show, :edit, :update, :destroy]

  # GET /companies
  # GET /companies.json
  def index
  end
  # GET /companies/1
  # GET /companies/1.json
  def show
  end

  # GET /companies/complete
  def new
    @company = Company.new
  end

  # GET /companies/1/edit
  def edit
  end

  # POST /companies
  # POST /companies.json
  def create
    @company = Company.new(company_params)

    respond_to do |format|
      if @company.save
        session[:company_id]=@company.id

        @user = User.find(current_user.id)


        if current_user.companies_count.zero?
          if @company.code.present?
            @user.update(:point => @user.point.to_i + 5000)
          end

          if @company.company_pictures.present?
            @user.update(:point => @user.point.to_i + 5000)
          end


          if @company.company_code.present?
            @user.update(:point => @user.point.to_i + 5000)
          end
        end

        format.html { redirect_to @company, notice: '전문가,회사가 등록되었습니다.' }
        format.json { render :show, status: :created, location: @company }
      else
        format.html { render :new }
        format.json { render json: @company.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /companies/1
  # PATCH/PUT /companies/1.json
  def update
    respond_to do |format|
      if @company.update(company_params)
        format.html { redirect_to @company, notice: '전문가,회사가 수정되었습니다.' }
        format.json { render :show, status: :ok, location: @company }
      else
        format.html { render :edit }
        format.json { render json: @company.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /companies/1
  # DELETE /companies/1.json
  def destroy
    @company.destroy
    respond_to do |format|
      format.html { redirect_to companies_url, notice: '전문가,회사가 삭제되었습니다.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_company
    @company = Company.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def company_params
    params.require(:company).permit(:title, :content, :code, :phone, :start_time, :end_time, :enable, company_pictures_attributes: [:id, :picture], company_code_attributes: [:id, :picture], speciality_ids: []).merge(user_id: current_user.id)
  end
end
