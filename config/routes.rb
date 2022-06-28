Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :tests, only: %w[] do
    collection do
      get :code1
      get :code2
    end
  end
end
