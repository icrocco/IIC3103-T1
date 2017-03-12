Rails.application.routes.draw do
  resources :press_releases do
    resources :comments do
    end
  end
  resources :boards
  root "press_releases#board"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
