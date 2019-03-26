Rails.application.routes.draw do
  root 'animals#index'
  resources :animals do
    get "delete"
  end
  resources :zonas do
    get "delete"
  end
  devise_for :users
  resources :api do
    collection do
      get "animals" => 'api#animals'
      get "zonas" => 'api#zonas'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
