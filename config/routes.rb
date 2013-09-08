Blogger::Application.routes.draw do
  get "static_pages/contact"

  get "static_pages/about"

root to: 'articles#index'
resources :articles do
	resources :comments
end
resources :tags
resources :authors
resources :author_sessions, only: [ :new, :create, :destroy ]

match 'login'  => 'author_sessions#new'
match 'logout' => 'author_sessions#destroy'

match 'contact' => 'contact#new', :as => 'contact', :via => :get
match 'contact' => 'contact#create', :as => 'contact', :via => :post
#match 'contact', :to => redirect('/static_pages/contact')

end
