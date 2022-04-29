Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'recipes/index'
      #get '/recipes', to: 'recipes#index'
      post 'recipes/create'
      get '/show/:id', to: 'recipes#show'
      delete '/destroy/:id', to: 'recipes#delete'
    end
  end
 root 'homepage#index'
 get '/*path' => 'homepage#index'
end
