Rails.application.routes.draw do
  get 'bmi/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :items

  get "/", to: "items#index"

end
