Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :dacs do
    resources :dacs, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :dacs, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :dacs, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
