Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"


  # get 'home' , to: "root#home" 
  # get 'account' , to: "root#account"


  root "root#index"
  post 'add' , to: "root#add"
  get 'delete/:id' , to: "root#delete"
  get 'update/:id' , to: "root#update"
  post 'updateform' , to: "root#updateform"
  get 'search_input' , to: "root#search"
end