Rails.application.routes.draw do
  get 'neets/index'

  root 'homes#index'
  resources:homes
  get 'admins/index'
  get 'admins/new'
  post '/articles' => 'admins#create'
  devise_for :admins
  devise_scope :admin do
  get '/admins/sign_out' =>'devise/sessions#destroy'
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
