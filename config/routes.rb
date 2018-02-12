Rails.application.routes.draw do
  devise_for :users
  resources :tweets do
    member do
      post :retweet
    end
  end
  root to: "tweets#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
