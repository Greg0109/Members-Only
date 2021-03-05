Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: "registrations" }
  devise_scope :user do #To make sure it doesn't fail
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "stories#index"
  resources :stories
end
