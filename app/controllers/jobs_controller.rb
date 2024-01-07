class JobsController < ApplicationController
  impressionist :actions => [:show]
  before_action :set_job, only: [:show, :edit, :update, :destroy]

  # GET /notices
  # GET /notices.json
  def index
    params[:per_page] = 10 unless params[:per_page].present?

    condition = {  enable: true }

    @job_count = Job.where(condition).count
    @jobs = Job.where(condition).page(params[:page]).per(params[:per_page]).order('id desc')
  end

  # GET /notices/1
  # GET /notices/1.json
  def show
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_notice
    @job = Job.find(params[:id])
  end
end
