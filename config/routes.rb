Lacasona::Application.routes.draw do

  devise_for :users
  
  get "lessee/new_sex" => 'lessees#new_sex', :as => :new_sex
  
  
  resources :payment_statuses

  
  devise_for :users
  
  get "do_payments/index"

  resources :invoice_statuses


  resources :consecutives


  resources :document_types


  get "transaction/month_end"

  get "transaction/billing"
  
  get "transaction/index"

  resources :payments


  resources :balance_movements


  resources :invoices


  resources :property_facilities


  resources :facilities


  resources :legal_natures


  resources :tax_regimes


  resources :people


  resources :owners
 

  resources :lessees
 

  resources :contracts


  resources :property_types


  resources :properties


  # resources :pages, except: :show
  # get ':id', to: 'pages#show', as: :page  
  # put ':id', to: 'pages#update', as: :page
  # delete ':id', to: 'pages#destroy', as: :page
  
  get "home/index"

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
  root to: 'home#index', as: 'home'
  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
