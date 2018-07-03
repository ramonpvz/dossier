Rails.application.routes.draw do
  root 'welcome#homepage'
  get '/home', to: 'welcome#homepage'
  get '/about', to: 'static_pages#about'
  get '/post', to: 'static_pages#post'
  get '/contact', to: 'static_pages#contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
