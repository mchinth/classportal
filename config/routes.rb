Classportal::Application.routes.draw do
  resources :users

  resources :student_courses

  resources :courses

  resources :students

  resources :instructors

  resources :admins

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  #root 'admins#index'
  #root 'sessions#new'

  root 'sessions#new'
  get '/login' => 'sessions#new'
  #get '/rootadmincreate'=> 'users#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  get '/user_students'=> 'users#list_students', as: :list_students
  get '/user_instructors' => 'users#list_instructors', as: :list_instructors
  get '/admin_home_page' => 'users#admin_home', as: :admin_home_page
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
