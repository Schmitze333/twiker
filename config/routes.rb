Rails.application.routes.draw do

	# Defino el método que atenderá el index de mi aplicación.
  root 'application#index'

  # Defino una ruta para el resgistro con metodo post y le asigno un controlador y un método
  # para que atiendan al cliente que llegue a esa ruta.

  # Defino una ruta para el inicio de sesión con metodo post y le asigno un controlador y un método
  # para que atiendan al cliente que llegue a esa ruta.
  get "calculadora" => "application#calculadora"

  post "calculo" => "application#calculo"

  resources :users

  post "login" => "users#login"

  get "logout" => "users#logout"


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
