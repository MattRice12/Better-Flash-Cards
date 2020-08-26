Rails.application.routes.draw do
  resources :categories do
    resources :flash_cards, except: [:index]
  end

  root 'categories#index'
end
