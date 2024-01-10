class QuestionsController < ApplicationController
  impressionist :actions => [:show]
  load_and_authorize_resource  except: [:index, :show]
  before_action :set_question, only: [:show, :edit, :update, :destroy]

  # GET /questions
  # GET /questions.json
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
        session[:question_list_type]='list'
      else
        session[:question_list_type]='module'
      end
    end

    @question_category_count=QuestionCategory.where(enable: true).count
    @question_categories=QuestionCategory.where(enable: true)

    params[:per_page] = 20 unless params[:per_page].present?

    if params[:category]
      @question_category = QuestionCategory.find(params[:category])
    end

    condition = { enable: true }

    if @question_category.present?
      condition[:question_category_id] = @question_category.id
    end

    @question_count = Question.where(condition).count
    @questions = Question.where(condition).page(params[:page]).per(params[:per_page]).order('id desc')


    respond_to do |format|
      format.html # _slide.html.erb
      format.json { render json: @questions }
    end
  end

  # GET /questions/1
  # GET /questions/1.json
  def show
    @answers = Answer.where({question_id: @question})
  end

  # GET /questions/complete
  def new
    @question = Question.new
    @question.build_question_picture
  end

  # GET /questions/1/edit
  def edit
  end

  # POST /questions
  # POST /questions.json
  def create
    @question = Question.new(question_params)

    respond_to do |format|
      if @question.save
        format.html { redirect_to @question, notice: 'question was successfully created.' }
        format.json { render :show, status: :created, location: @question }
      else
        @question.build_question_picture

        format.html { render :new }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /questions/1
  # PATCH/PUT /questions/1.json
  def update
    respond_to do |format|
      if @question.update(question_params)
        format.html { redirect_to @question, notice: 'question was successfully updated.' }
        format.json { render :show, status: :ok, location: @question }
      else
        format.html { render :edit }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /questions/1
  # DELETE /questions/1.json
  def destroy
    @question.destroy
    respond_to do |format|
      format.html { redirect_to questions_url, notice: 'question was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_question
    @question = Question.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def question_params
    params.require(:question).permit(:question_category_id, :title, :content, :enable, question_picture_attributes: [:picture]).merge(user_id: current_user.id)
  end
end
