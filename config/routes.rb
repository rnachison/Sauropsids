SauropsAdopts::Application.routes.draw do


  get "sessions/new"
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :sessions
  resources :users

  get 'sauropsids/new' => 'sauropsids#new', as: :new_sauropsid

  post 'sauropsids/' => 'sauropsids#create', as: :create_sauropsid

  get 'sauropsids/' => 'sauropsids#index', as: :sauropsids

  get 'sauropsids/pterosaur_index/' => 'sauropsids#pterosaur_index', as: :pterosaur_index

  get 'sauropsids/ichthyosaur_index' => 'sauropsids#ichthyosaur_index', as: :ichthyosaur_index

  get 'sauropsids/:id' => 'sauropsids#show', as: :sauropsid

  get 'sauropsids/:id/edit' => 'sauropsids#edit', as: :edit_sauropsid

  patch 'sauropsids/:id' => 'sauropsids#update', as: :update_sauropsid

  delete 'sauropsids/:id' => 'sauropsids#destroy', as: :delete_sauropsid

  post 'sauropsids/:id/adopt' => 'sauropsids#adopt', as: :adopt





  root 'sauropsids#index'
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
