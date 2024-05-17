Rails.application.routes.draw do
  resources :leagues
  devise_for :users
  devise_scope :user do
    unauthenticated :user do
      root 'public#index', as: :unauthenticated_root 
    end
    authenticated :user do
      root to: 'poops#index', as: :authenticated_root
    end
  end

  resources :poops
end
