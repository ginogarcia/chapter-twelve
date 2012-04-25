ChapterTwelve::Application.routes.draw do
  resources :users do
      member do
          get :following, :followers
      end
  end
  resources :sessions,      :only => [:new, :create, :destroy]
  resources :microposts,    :only => [:create, :destroy]
  resources :relationships, :only => [:create, :destroy]


  
  root 		        :to => 'pages#home'
  match '/contact',     :to => 'pages#contact'
  match '/about', 	:to => 'pages#about'
  match '/help',	:to => 'pages#help'

  match '/show',         :to => 'users#show'
  match '/signup', 	 :to => 'users#new'
  match '/signin',       :to => 'sessions#new'
  match '/signout',      :to => 'sessions#destroy'
  
  match '/breed',       :to => 'demos#breed'

end
