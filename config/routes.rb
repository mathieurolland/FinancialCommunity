Rails.application.routes.draw do
  devise_for :users
  root to: "pages#dashboard", constraints: lambda { |r| r.env["warden"].authenticate? }
  root to: 'pages#home'
  resources :markets, only: [:index]
  resources :values, only: [:index, :create]
  resources :user_values, only: [:create, :destroy]
  resources :connections, only: [:index, :create, :update, :show]
  resources :debate_room, only: [:index, :create, :update, :destroy, :new] do
    resources :guest_box, only: [:create, :destroy] do
      resources :messages, only: [:create, :index]
    end
  end
  resources :publication, only: [:index, :create, :update, :destroy, :new] do
    resources :comment, only: [:create, :index]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
