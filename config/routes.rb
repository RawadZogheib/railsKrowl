Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources :articles  #to check it : rails routes
    end
  end
end
