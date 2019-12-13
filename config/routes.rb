Rails.application.routes.draw do
      resources :destinations do
        resources :activities
  end
end
