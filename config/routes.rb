Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do 
      
      resources :slacks
      resources :articles #to check it : rails routes

      # resources :articles, path: '/articles/create1'
      # resources :articles, path: '/articles/create2'
 
      # get '/articles/:create1', to: 'articles#create1'
      # get '/articles/:create2', to: 'articles#create2'

      # match '/articles/create1', to: 'articles#create1', via:[:post]
      # match '/articles/create2', to: 'articles#create2', via:[:post]

     
      #match '/slacks/slack', to: 'slacks#slack', via:[:post]
      
      # map.connect "/create2", :controller=> 'articles', :action=> 'create2'
    end
  end


end
