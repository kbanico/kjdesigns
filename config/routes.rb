Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    root "static_pages#index"
    resources :emails, except: [:destroy, :edit, :show, :update]
    # get "signup", to: 'users#new'
    # resources :users, except:[:new]

    #login logout
    get "login", to: "sessions#new"
    post "login", to: "sessions#create"
    delete "logout", to: "sessions#destroy"



end
