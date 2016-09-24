Rails.application.routes.draw do
  devise_for :users
  resources :gifs do
    collection do
      get "tagged/:tag", action: :tagged, as: :tagged
    end
  end

  get "/:tag", to: "gifs#random"
  get 'tags/:tag', to: 'gifs#random', as: :tag
  root to: "gifs#index"


end
