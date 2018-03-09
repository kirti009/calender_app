Rails.application.routes.draw do
  
  get 'sessions/create'
  get 'sessions/destroy'
  get 'homes/show'
  get 'homes/index'

  resources :users, :events

  get 'login', to: redirect('/auth/google_oauth2'), as: 'login'
  get 'fb_login', to: redirect('/auth/facebook'), as: 'fb_login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'homes', to: 'homes#show'
  get 'me', to: 'me#show', as: 'me'
  root to: "homes#show"
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end
end
