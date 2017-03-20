Rails.application.routes.draw do

    # API routes path
    namespace :api, defaults: { format: :json } do
        namespace :v1 do
            #devise_for :users
            resources :users, :globalmessages, :normalmessages, :only => [:index, :show, :create, :update, :destroy]
        end
    end
end