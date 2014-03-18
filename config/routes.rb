ResqueLab::Application.routes.draw do
  devise_for :users
  resources :guestbooks

  root "guestbooks#index"

end
