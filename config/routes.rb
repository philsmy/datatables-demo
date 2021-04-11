Rails.application.routes.draw do
  resources :ecom_orders do
    post 'bulk_actions', on: :collection
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'ecom_orders#index'
end
