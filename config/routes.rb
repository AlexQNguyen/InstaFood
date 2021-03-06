Rails.application.routes.draw do

  post '/users/:user_id/posts/:post_id/comments/index' => 'commets#create'

  get '/users/:user_id/posts' => 'posts#index'
  get '/users/:user_id/posts/show' => 'posts#show'
  get '/users/:user_id/posts/new' => 'posts#new'
  post '/users/:user_id/posts/create' => 'posts#create', as: 'post_path_create'
  get '/users/:user_id/posts/:post_id/edit' => 'posts#edit'
  patch '/users/:user_id/posts/:post_id' => 'posts#update', as: 'post_path_update'
  delete '/posts/:post_id/delete' => 'posts#delete'



  get '/users/:user_id/posts/likes/show' => 'likes#show'
  post '/likes' => 'likes#create'
  delete '/likes/:user_id/:post_id/unlike' => 'likes#delete'

  get '/' => 'users#index'
  get '/users/login' => 'users#login'

  post '/register' => "sessions#register"
  post '/login' => 'sessions#login'
  get '/logout' => 'sessions#logout'



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
