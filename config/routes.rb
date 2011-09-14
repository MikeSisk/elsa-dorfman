Dorfman::Application.routes.draw do

  resources :pages

  resources :categories do
    resources :albums, :only => [:show]
  end
  
  resources :subscribers

  devise_for :admins, :path_names => { :sign_in => 'login', :sign_out => 'logout'}

  resources :images
  resources :albums do
    resources :images
  end
    
  match 'control-panel'     => 'static_pages#control_panel', :as => :control
  match 'map'               => 'static_pages#map',          :as => :map
  match 'home'              => 'static_pages#home',         :as => :home
  match 'about-elsa'        => 'static_pages#about_elsa',   :as => :about_elsa
  match 'about-the-camera'  => 'static_pages#about_camera', :as => :about_camera
  match 'donate'            => 'static_pages#donate',       :as => :donate
  match 'sitemap'           => 'static_pages#sitemap',      :as => :sitemap
  
  match 'ginsburge-on-sale' => 'static_pages#ginsburge_on_sale',  :as => :ginsburge_sale
  
  root :to => "static_pages#home"

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
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
