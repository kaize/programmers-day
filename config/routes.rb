ProgrammersDay::Application.routes.draw do

  mount Ckeditor::Engine => '/ckeditor'

  scope module: :web do
    root to: 'welcome#show'

    resource :session
    resources :members, only: [:new, :create]
    #resources :pages, only: [:show]
    #resources :news, only: [:index]

    namespace :admin do
      root to: 'pages#index'

      resources :users
      resources :pages
      resources :news
    end
  end

  namespace :api do
    resources :users, only: [:index]
  end

end
