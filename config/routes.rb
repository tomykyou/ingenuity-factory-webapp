Rails.application.routes.draw do
  resources :mainnote
  root 'mainnote#top'
#  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
#  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 
#  get 'sessions/new'
#  root "mainnote#top"
#  get 'mainnnote/mypage', to: 'mainnote#mypage'
#  get 'mainnnote/about', to: 'mainnote#about'
#  get 'mainnnote/usershow', to: 'mainnote#usershow'
#  get 'mainnnote/userpg/:id', to: 'mainnote#userpg'

#  resources :mainnote do
#    resources :notecomments
#  end
end
