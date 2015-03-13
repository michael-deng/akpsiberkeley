Akpsiberkeley::Application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  devise_for :actives

  resources :career_entries, only: [:index]
  resources :awards, only: [:index]
  resources :rush_applications, only: [:new, :index, :show, :create]
  
  resources :rushee_profiles, only: [:index, :show] do
    resources :rushee_comments, only: [:create, :destroy]
  end

  resources :actives, only: [:index, :show] do
    resources :career_entries
    resources :awards
  end

  root "static_pages#home"
  match '/about',                 to: 'static_pages#about',                 via: 'get'
  match '/careers',               to: 'static_pages#careers',               via: 'get'
  match '/awards',                to: 'static_pages#awards',                via: 'get'
  match '/abc',                   to: 'static_pages#abc',                   via: 'get'
  match '/bcs',                   to: 'static_pages#bcs',                   via: 'get'
  match '/abv',                   to: 'static_pages#abv',                   via: 'get'
  match '/rush',                  to: 'static_pages#rush',                  via: 'get'
  match '/faq',                   to: 'static_pages#faq',                   via: 'get'
  match '/contact',               to: 'static_pages#contact',               via: 'get'
  match '/eboard_actives',        to: 'static_pages#eboard_actives',        via: 'get'
  match '/application_submitted', to: 'static_pages#application_submitted', via: 'get'
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
