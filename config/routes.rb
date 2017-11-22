Rails.application.routes.draw do

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
  
  get '/product/:id', to: 'product#show', as: 'product_id', number: /\d+/
end
