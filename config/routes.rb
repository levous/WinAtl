ActionController::Routing::Routes.draw do |map|
  map.resources :leads

  map.resources :class_locations

  map.resources :class_schedules

  map.resources :courses, :has_many => :class_schedules

  map.resources :people

  # The priority is based upon order of creation: first created -> highest priority.

  # Sample of regular route:
  #   map.connect 'products/:id', :controller => 'catalog', :action => 'view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   map.purchase 'products/:id/purchase', :controller => 'catalog', :action => 'purchase'
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   map.resources :products

  # Sample resource route with options:
  #   map.resources :products, :member => { :short => :get, :toggle => :post }, :collection => { :sold => :get }

  # Sample resource route with sub-resources:
  #   map.resources :products, :has_many => [ :comments, :sales ], :has_one => :seller
  
  # Sample resource route with more complex sub-resources
  #   map.resources :products do |products|
  #     products.resources :comments
  #     products.resources :sales, :collection => { :recent => :get }
  #   end

  # Sample resource route within a namespace:
  #   map.namespace :admin do |admin|
  #     # Directs /admin/products/* to Admin::ProductsController (app/controllers/admin/products_controller.rb)
  #     admin.resources :products
  #   end

  # You can have the root of your site routed with map.root -- just remember to delete public/index.html.
  # map.root :controller => "welcome"

  # See how all your routes lay out with "rake routes"

  # Install the default routes as the lowest priority.
  # Note: These default routes make all actions in every controller accessible via GET requests. You should
  # consider removing the them or commenting them out if you're using named routes and resources.
  map.connect '/seo', :controller => "home", :action => "seo_info"
  map.connect '/seo/sem', :controller => "home", :action => "sem_info"
  map.connect '/training', :controller => "home", :action => "training_info"
  map.connect '/john_sherrod', :controller => "home", :action => "john_sherrod_info"
  map.connect '/training/affordable_small_business_seo', :controller => "home", :action => "affordable_info"
  map.connect '/training/seo_for_small_business_owner', :controller => "home", :action => "client_who_info"
  map.connect '/classes', :controller => "home", :action => "classes_info"
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
  map.connect '', :controller => "home", :action => "home_page"
end
