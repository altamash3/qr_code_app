Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :qrcodes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :app, only:[] do
    collection do
      get :index
      get :generate_qr
      get :qrpage
      get :sign_up
      get :create_sign_up
    end
  end
end
