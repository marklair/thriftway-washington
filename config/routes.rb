Template::Application.routes.draw do
  
  get "tests/edge_cases"

  get "tests/main_tags"

  get "tests/components"

  get "tests/theme"

  # get "guides"
  # get "guides/index"
  # get "guides/bootstrap"
  # get "guides/bootstrap/base"
  # get "guides/bootstrap/components"
  # get "guides/bootstrap/download"
  # get "guides/bootstrap/examples"
  # get "guides/bootstrap/javascript"
  # get "guides/bootstrap/less"
  # get "guides/bootstrap/scaffolding"
  # get "guides/bootstrap/upgrading"
  
  

  resources :users, :user_sessions, :password_resets
  resources :account, :controller => "users"
  match 'login' => 'user_sessions#new', :as => :login
  match 'logout' => 'user_sessions#destroy', :as => :logout

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
  match ':action' => 'guides#:action'
  root :to => "users#index", :as => :home
  # extras: http://d.pr/Vt7w
end
