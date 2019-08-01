Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only:[:show, :index, :create, :destroy, :update]
  resources :artworks, only:[:show, :create, :destroy, :update]
  resources :artwork_shares, only:[ :create, :destroy]
  # post "/artwork_shares/:viewer_id/:artwork_id", to "artworkshares#create"/
  resources :users do
    resources :artworks, only:[:index]
  end
  

end

# artwoskshare/user_id/artwork_id