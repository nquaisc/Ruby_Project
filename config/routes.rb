Rails.application.routes.draw do

  get 'checkout/index'

  get 'shopping_cart/index'

  get 'categories/index'

  get 'contacts/index'

  get 'abouts/index'

  get 'product/index'

  get 'product/show'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get '/' => 'product#index' , as: 'index'
  
  get '/AboutUs' => 'abouts#index' , as: 'abouts'
  
  get '/ContactUs' => 'contacts#index' , as: 'contacts'
  
  get '/Category' => 'categories#index' , as: 'categories'
  
  get '/product/:id', to: 'product#show', as: 'product_id', number: /\d+/
  
  post '/product/:id' => 'product#add_cart', as: :cart
  
  post '/invoice' => 'checkout#invoice' , as: 'invoice'
  
  get '/cart' => 'shopping_cart#index' , as: 'shoppingcart'
  
  get '/checkout' => 'checkout#index' , as: 'pay'
end
