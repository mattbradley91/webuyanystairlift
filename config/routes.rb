Rails.application.routes.draw do

  constraints(host: /(www\.)?webuyanystairlift\.org.uk) do
    get '/', to: redirect('http://webuyanystairlift.org.uk')
  end

  devise_for :users
  get 'pages/home' => 'high_voltage/pages#show', id: 'home'

  match '/contact-us',     to: 'contacts#new',             via: 'get'
  resources "contacts", only: [:new, :create]
  resources "feedbacks", only: [:new, :create]

  get '/contacts', to: redirect('/contact-us')

  get 'about-us', controller: 'pages', action: 'show', id: 'about-us'
  get 'selling-your-stairlift', controller: 'pages', action: 'show', id: 'selling-your-stairlift'
  get 'contact-thankyou', controller: 'pages', action: 'show', id: 'contact-thankyou'
  get 'feedback-thankyou', controller: 'pages', action: 'show', id: 'feedback-thankyou'
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
  get '*path' => redirect('/')
end
