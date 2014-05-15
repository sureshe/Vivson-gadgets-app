Rails.application.routes.draw do
  
root to: 'users#sign_in'
# match ':controller(/:action(/:id))',:via => [:get, :post, :delete]

resources :users do 
  collection do 
    get 'sign_in'
    get 'sign_up'
    post 'validUser'
  end
end

resources :roles
resources :gadgets do
  member do
    get 'generatereport'
    post 'sendmail'
  end
end

resources :gadgets

resources :users_admin do
  collection do
    get 'sign_out'
  end
end

# post 'admins/index'
# get 'admins/new'
# post 'admins/new'
# post 'admins/create'
# get 'admins/signin'
# post 'admins/signin'
# get 'admins/show'
# post 'admins/show'
# get 'admins/index'
# get 'admins/contact'
# delete 'admins/signin'
# get 'roles/create'
# get 'roles/new'
# post 'roles/create'

# get 'gadgets/new'
# get 'gadgets/create'

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
