Rails.application.routes.draw do


  get '/create_message' => 'team_members#create_message'
  post '/create_message' => 'team_members#send_message'
  resources :team_members
  resources :duk
  resources :admins

  get 'site/learnyourwords', :path => 'index'
  get 'site/benefits', :path => 'benefits'
  get 'site/download', :path => 'download'
  get 'site/download_app_win' => 'site#download_app_win', as: :download_app_win
  get 'site/download_app_mac' => 'site#download_app_mac', as: :download_app_mac
  get 'site/blog', :path => 'blog'
  get 'site/contact', :path => 'contact'
  post '/contact' => 'site#contact_send_email'

  get 'admin' => 'sessions#new', as: :admin_login	#sign in,
  post 'admin' => 'sessions#create'
  delete 'logout' => 'sessions#destroy' #log out

  get 'admin/signup' => 'admins#new', as: :admin_signup #sign up

  get 'duks' => 'duk#new'
  post 'duks' => 'duk#create'

  root to: 'site#learnyourwords'
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
