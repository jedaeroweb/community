Rails.application.routes.draw do
  root 'home#index'
  resources :comments, only: [:create, :destroy]

  resources :blogs do
    member do
      put 'like', to: 'blogs#upvote'
      put 'dislike', to: 'blogs#downvote'
    end
  end

  resources :notices do
    member do
      put 'like', to: 'notices#upvote'
      put 'dislike', to: 'notices#downvote'
    end
  end

  resources :talks do
    member do
      put 'like', to: 'talks#upvote'
      put 'dislike', to: 'talks#downvote'
    end
  end


  resources :questions do
    member do
      put 'like', to: 'talks#upvote'
      put 'dislike', to: 'talks#downvote'
    end
    resources :answers
  end

  resources :galleries
  resources :markets
  resources :jobs
  resources :user_point_logs

  #intro
  get 'intro', :to=>'intro#index', as: 'intro'
  get 'privacy', :to=>'intro#privacy', as: 'privacy'
  get 'agreement', :to=>'intro#agreement', as: 'agreement'
  get 'mypage',:to=>'users#index', as: 'mypage'
  get 'tags/:tag', to: 'tags#index', as: :tag

  devise_for :users, :controllers => { :omniauth_callbacks => 'users/omniauth_callbacks', :sessions => "users/sessions", :registrations => "users/registrations", :passwords => "users/passwords" }, :path_names => { :sign_up => 'new', :sign_in => 'login', :sign_out => 'logout' } do
    get 'edit', :to => 'users::Registrations#edit'
    get 'login', :to => 'users::Sessions#new'
    get 'logout', :to=> 'users::Sessions#destroy'
  end

  # 관리사용자
  devise_for :admins, :controllers => {  :sessions => "admins/sessions",:registrations => "admins/registrations" }, :path_names =>  {:sign_up=>'complete',:sign_in => 'login', :sign_out => 'logout'} do
    get 'edit', :to => 'admins::Registrations#edit'
    get 'login', :to => 'admins::Sessions#new'
    get 'logout', :to=> 'admins::Sessions#destroy'
  end

  # 관리자
  scope 'admin', module: 'admin', as: 'admin' do
    get '/' => 'home#index'

    resources :admins
    resources :admin_pictures
    resources :address_levels
    resources :addresses
    resources :user_point_logs
  end
end
