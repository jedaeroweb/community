class Admin::TalksController < Admin::AdminController
  before_action :set_talk, only: [:show, :edit, :update, :destroy]

  # GET /jobs
  # GET /jobs.json
  def index
    params[:per_page] = 10 unless params[:per_page].present?

    @talk_count = Talk.count
    @talks = Talk.page(params[:page]).per(params[:per_page]).order('id desc')

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @talks }
    end
  end

  # GET /jobs/1
  # GET /jobs/1.json
  def show
  end

  # GET /jobs/new
  def new
    @talk = Talk.new
  end

  # GET /jobs/1/edit
  def edit
  end

  # POST /jobs
  # POST /jobs.json
  def create
    @talk = Job.new(talk_params)

    respond_to do |format|
      if @talk.save
        format.html { redirect_to [:admin, @talk], notice: t(:message_success_create) }
        format.json { render :show, status: :created, location: @talk }
      else
        format.html { render action: 'new' }
        format.json { render json: @talk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jobs/1
  # PATCH/PUT /jobs/1.json
  def update
    respond_to do |format|
      if @talk.update(talk_params)
        format.html { redirect_to [:admin, @talk], notice: t(:message_success_update) }
        format.json { render :show, status: :ok, location: @talk }
      else
        format.html { render action: 'edit' }
        format.json { render json: @talk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jobs/1
  # DELETE /jobs/1.json
  def destroy
    @talk.destroy
    respond_to do |format|
      format.html { redirect_to admin_jobs_url }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_talk
    @talk = Talk.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def talk_params
    params.require(:talk).permit(:title, :size, :enable)
  end
end
