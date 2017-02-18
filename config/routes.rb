Rails.application.routes.draw do
  resources :food_items, shallow: true do
    resources :orders
  end

  resources :orders

  get 'menu' => 'home#menu'
  get 'contact_us' => 'home#contact_us'
  get 'show' => 'orders#show'

  root "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
