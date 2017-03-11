Rails.application.routes.draw do
  resources :press_releases
  root "press_releases#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
