Rails.application.routes.draw do
  get 'neets/index'
  get 'homes/circle'
  root 'homes#index'
  resources:homes
  post '/homes/circles/index'
  get 'admins/index'
  get 'admins/new'
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
