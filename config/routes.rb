Rails.application.routes.draw do
  
 
  devise_for :users
  # devise_scope :user do
  #   get "sign_in", to: "devise/sessions#new"
  #   delete "sign_out", to: "devise/sessions#destroy"
  # end

  # devise_for :users, controllers: { registrations: "registrations" }
  
  get "/" => "home#home"
  resources :users, only: :show 

  get "/workouts/:workout_id/exercises/step" => "exercises#step", as: "ex_step"

  get "/workouts_templates/userindex" => "workouts_templates#userindex", as: "user_index"

  delete "/workouts/:id" => "workouts#destroy" , as: "delete_workout"

  resources :workouts_templates, only: [:index, :show, :create, :new, :edit, :update, :destroy] do
    resources :sessionlists, only: [:index, :show, :create, :new, :edit, :update, :destroy]
  end

  resources :templates, only: [:new, :index, :show, :create, :destroy]

   resources :workouts, only: [:index, :show, :create, :new, :edit, :update, :destroy] do
    resources :exercises, only: [:index, :destroy, :new, :create, :edit, :update, :destroy]
  end
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
 

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
