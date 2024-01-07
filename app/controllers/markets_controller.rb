class MarketsController < ApplicationController
  impressionist :actions => [:show]
  before_action :set_market, only: [:show, :edit, :update, :destroy]

  # GET /notices
  # GET /notices.json
  def index
    params[:per_page] = 10 unless params[:per_page].present?

    condition = {  enable: true }

    @market_count = Market.where(condition).count
    @market = Market.where(condition).page(params[:page]).per(params[:per_page]).order('id desc')
  end

  # GET /notices/1
  # GET /notices/1.json
  def show
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_market
    @market = Market.find(params[:id])
  end
end
