Rails.application.routes.draw do
      resources :destinations do
        resources :categories
  end
end
