Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "links#index"

  resources :links, only: [:create] do
    collection do
      get :top_links
    end
  end

  get ':slug', to: 'links#show'
end
