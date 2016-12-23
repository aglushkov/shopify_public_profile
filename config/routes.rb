Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  namespace :shopify do
    mount ShopifyApp::Engine, at: '/'
    get 'home/index'
    get 'app_proxy/index'
  end

  # root to: 'pages#home'
  root to: 'shopify/home#index'
end
