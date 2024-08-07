class ApplicationController < ActionController::Base
  layout :layout
  #before_action :set_locale
  before_action :set_og_title

  def initialize(*params)
    super(*params)
    before_init
  end

  def before_init
    @meta_robot='all, index, follow'
    @meta_description=t(:meta_description)
    @meta_keywords=t(:meta_keywords)
    @meta_image=t(:meta_image)
    @meta_url=t(:meta_url)

    @page_itemtype="http://schema.org/WebPage"
    @resource ||= User.new
  end

  def set_og_title
    if @title
      @og_title=@title
    else
      @og_title=t(:default_title)
    end
  end

  def current_ability
    @current_ability ||= UserAbility.new(current_user)
  end

  def layout
    if params[:no_layout]
      return false
    else
      return 'application'
    end
  end


  def set_og_title
    if @title
      @og_title=@title
    else
      @og_title=t(:default_title)
    end
  end

  def current_ability
    @current_ability ||= UserAbility.new(current_user)
  end

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to new_user_session_path, :notice => t(:login_first)
  end
end
