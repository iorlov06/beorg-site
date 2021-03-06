Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  get 'news/new', to: 'news#new'
  post 'news/create', to: 'news#create'
  get 'news/:id/edit', to: 'news#edit'
  post 'news/:id/update', to: 'news#update'
  delete 'news/:id', to: 'news#delete'
  get 'news/archive', to: 'news#index'
  get 'news/:id', to: 'news#show'
  post 'reviews/add', to: 'reviews#add'
  get 'users/:user_id/delete_review', to: 'reviews#delete'
  get 'users/edit_info', to: 'users#edit'
  post 'users/update_info', to: 'users#update'
  root 'info#index'
  get 'cabinet', to: 'users#cabinet'
  get 'orders/search_partners', to: 'orders#search_partners'
  get 'orders/new', to: 'orders#new'
  post 'orders/create'
  get 'orders/tracking'
  get 'admin/index'
  get 'admin/search'
  get 'admin/manage_role'
  get 'about', to: 'info#about'
  get 'manage_about', to: 'info#manage_about'
  get 'orders/history'
  post 'save_about', to: 'info#save_about'
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
