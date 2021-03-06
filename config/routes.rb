Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'suppliers#index'
  resources :suppliers, only: [:index, :show, :new, :create, :edit, :update] do
    get "search", on: :collection
  end
end
