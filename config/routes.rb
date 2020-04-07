Rails.application.routes.draw do
  root 'welcome#index'
  resources :members do
    collection do
      get 'list'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
