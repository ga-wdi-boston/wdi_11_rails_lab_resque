ResqueLab::Application.routes.draw do
  devise_for :users
  resources :guests

  root to: 'guests#index'
end
