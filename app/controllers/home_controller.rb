class HomeController < ApplicationController
  def index
    @script='home/index'

    condition = { enable: true }


    @question_categories= QuestionCategory.where(enable: true)

    @galleries = Gallery.order('id desc').page(0).per(24)


    @blog_count = Blog.where(condition).count
    @blogs = Blog.where(condition).page(0).per(6).order('id desc')

    @talk_count = Talk.where(condition).count
    @talks = Talk.where(condition).page(0).per(6).order('id desc')
  end

  
  def no_auth

  end
end