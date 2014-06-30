RecipesApi::Application.routes.draw do
  resources :users

  root :to => 'users#new'
  get '/signin' => 'users#signin_attempt', as: "signin"
  post '/api/v1/logout' => 'users#logout', as: 'logout'
  post '/api/v1/users' => 'users#create', as: 'create_user'
  get '/api/v1/users/new' => 'users#new', as: 'new_user'
  post '/api/v1/users/create' => 'users#create', as: 'create_user'
  get '/api/v1/' => 'users#new'

  get '/api/v1/:api_key/recipes/search/:terms' => 'recipes#search', as: 'search', defaults: {format: :json}
  get '/api/v1/:api_key/recipes' => 'recipes#index', as: 'recipes', defaults: {format: :json}
  get '/api/v1/:api_key/recipes/:id' => 'recipes#show', as: 'recipe', defaults: {format: :json}
  get '/api/v1/auth/keys' => 'keys#new', as: 'new_key'
  post '/api/v1/auth/keys' => 'keys#generate', as: 'create_key'
  get '/api/v1/auth/keys/:id' => 'keys#show', as: 'key'

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
end
