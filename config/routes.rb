Rails.application.routes.draw do
  root 'welcome#index'
  resources :members
  resources :shop_page
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
