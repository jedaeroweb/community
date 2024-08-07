class TalksController < ApplicationController
  #impressionist :actions => [:show]
  before_action :authenticate_user!, :except => [:index,:show]
  before_action :set_talk, only: [:show, :edit, :update, :destroy, :upvote, :downvote]

  # GET /talks
  # GET /talks.json
  def index
    if params[:search_detail].present?
      session[:search_detail]=1
    else
      if params[:search_summary].present?
        session.delete(:search_detail)
      end
    end

    if params[:list_type].present?
      if params[:list_type]=='list'
        session[:talk_list_type]='list'
      else
        session[:talk_list_type]='module'
      end
    end

    params[:per_page] = 12 unless params[:per_page].present?

    condition = { enable: true }

    @talk_count = Talk.where(condition).count
    @talks = Talk.where(condition).page(params[:page]).per(params[:per_page]).order('id desc')


    respond_to do |format|
      format.html # _slide.html.erb
      format.json { render json: @talks }
    end
  end

  # GET /blogs/1
  # GET /blogs/1.json
  def show
    @comment  = Comment.build_from(@talk, current_user, "")

    @meta_keywords=@talk.tag_list+t(:meta_keywords)
    @title=@talk.title

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @comment }
    end
  end

  # GET /talks/new
  def new
    @talk = Talk.new
    @talk.talk_pictures.build
  end

  # GET /talks/1/edit
  def edit
  end

  # POST /talks
  # POST /talks.json
  def create
    @talk = Talk.new(talk_params)

    respond_to do |format|
      if @talk.save
        format.html { redirect_to @talk, notice: 'blog was successfully created.' }
        format.json { render :show, status: :created, location: @talk }
      else
        format.html { render :new }
        format.json { render json: @talk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /companies/1
  # PATCH/PUT /companies/1.json
  def update
    respond_to do |format|
      if @talk.update(talk_params)
        format.html { redirect_to @talk, notice: 'blog was successfully updated.' }
        format.json { render :show, status: :ok, location: @talk }
      else
        format.html { render :edit }
        format.json { render json: @talk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /companies/1
  # DELETE /companies/1.json
  def destroy
    @talk.destroy
    respond_to do |format|
      format.html { redirect_to talks_url, notice: 'blog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def upvote
    respond_to do |format|
      if @talk.liked_by current_user
        format.html { redirect_to talk_path(@talk), :notice => t(:message_success_recommend)}
        format.json { render :json => {vote_up: @talk.cached_votes_up}}
      else
        format.html { render :action => "index" }
        format.json { render :json => @talk.errors, :status => :unprocessable_entity }
      end
    end
  end

  def downvote
    respond_to do |format|
      if @talk.downvote_from current_user
        format.html { redirect_to talk_path(@talk), :notice => t(:message_success_recommend)}
        format.json { render :json => {vote_up: @talk.cached_votes_down}}
      else
        format.html { render :action => "index" }
        format.json { render :json => @talk.errors, :status => :unprocessable_entity }
      end
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_talk
    @talk = Talk.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def talk_params
    params.require(:talk).permit(:title, :description, :content, :tag_list, talk_pictures_attributes: [:picture]).merge(user_id: current_user.id)
  end
end
