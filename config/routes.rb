Rails.application.routes.draw do
  resources :trees, only: [:index, :new, :show] do
    member do
      get :parents
    end
  end
end
