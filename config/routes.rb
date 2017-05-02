Rails.application.routes.draw do
  get 'others/bbb'

  root 'homes#index'
  #neets
  get '/neets' => 'homes#neets_list'
  get 'neets/show'
  get '/neets/circle' => 'others#circle'
  get '/neets/neet_profs/:id' => 'neets#prof',as: 'neets_profs'
  get '/neets/bbb' => 'others#bbb' ,as: :bbb
  #homes
  resources:homes ,:except => [:show]
  get 'homes/show/:id' => 'homes#show'
  get 'homes/circle'
  get "homes/show_details/:id" => 'homes#show_details',as: 'homes_show_details'
  get '/homes/index/show_info' => 'homes#show_info'
  #admins関係
  get 'admins/index'
  get 'admins/new'
  get 'admins/new_prof'
  post '/admins/create_profile' => 'admins#create_prof'
  get "admins/show/:id" => 'admins#show'
  get "admins/edit_article/:id" => 'admins#edit_article'
  patch "/article/:id" => 'admins#update_article'
  delete "admins/delete_article/:id" => "admins#delete"
  post '/articles' => 'admins#create'
  get '/admins/edit_prof/:id' => 'admins#edit_prof'
  patch '/admins/:id' => 'admins#update_prof'
  devise_for :admins
  devise_scope :admin do
  get '/admins/sign_out' =>'devise/sessions#destroy'
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
