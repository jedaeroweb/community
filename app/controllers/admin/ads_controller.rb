class Admin::AdsController < Admin::AdminController
  before_action :set_ad,  only: [:show, :edit, :update, :destroy]

  # GET /ads
  # GET /ads.json
  def index
    params[:per_page] = 10 unless params[:per_page].present?

    condition={}

    @speciality_category_count=SpecialityCategory.where(enable: true).count
    @speciality_categories = SpecialityCategory.where(enable: true)

    if params[:category].present?
      condition[:speciality] = {:speciality_category_id=>params[:category]}

      @ad_count = Ad.joins(:speciality).where(condition).count
      @ads = Ad.joins(:speciality).where(condition).page(params[:page]).per(params[:per_page]).order('id desc')
    else
      @ad_count = Ad.where(condition).count
      @ads = Ad.where(condition).page(params[:page]).per(params[:per_page]).order('id desc')
    end
  end

  # GET /ads/1
  # GET /ads/1.json
  def show
    @speciality_category_count=SpecialityCategory.where(enable: true).count
    @speciality_categories = SpecialityCategory.where(enable: true)
  end

  # GET /ads/complete
  def new
    @ad = Ad.new
  end

  # GET /ads/1/edit
  def edit
  end

  # POST /ads
  # POST /ads.json
  def create
    @ad = Ad.new(product_params)

    respond_to do |format|
      if @ad.save!
        format.html { redirect_to admin_products_path, notice: 'Ad was successfully created.' }
        format.json { render :show, status: :created, location: @ad }
      else
        format.html { render action: 'new' }
        format.json { render json: @ad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ads/1
  # PATCH/PUT /ads/1.json
  def update
    respond_to do |format|
      if @ad.update(product_params)
        format.html { redirect_to admin_product_path(@ad), notice: 'Ad was successfully updated.' }
        format.json { render :show, status: :ok, location: @ad }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ads/1
  # DELETE /ads/1.json
  def destroy
    @ad.destroy
    respond_to do |format|
      format.html { redirect_to admin_ads_url, notice: 'Ad was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_ad
    @ad = Ad.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def product_params
    params.require(:ad).permit(:product_category_id, :title, :price, :enable, product_picture_attributes: [:picture])
  end
end
