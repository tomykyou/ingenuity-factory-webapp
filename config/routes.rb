Rails.application.routes.draw do
#  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
devise_for :users, controllers: {
  sessions: "users/sessions",
  registrations: 'users/registrations'
}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 
  get 'sessions/new'
  root "mainnote#top"
  get 'mainnnote/mypage', to: 'mainnote#mypage'
  get 'mainnnote/about', to: 'mainnote#about'
  get 'mainnnote/usershow', to: 'mainnote#usershow'
  get 'mainnnote/userpg/:id', to: 'mainnote#userpg'

  resources :mainnote do
    resources :notecomments
    resources :likes, only: [:create, :destroy]

  end
end
