Rails.application.routes.draw do

  namespace :api do 
    namespace :v1 do
      resources :businesses, param: :slug
    end
  end
end
