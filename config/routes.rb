ProgrammersDay::Application.routes.draw do

  mount Ckeditor::Engine => '/ckeditor'

  scope module: :web do
    root to: 'welcome#show'

    resource :session
    resources :members, only: [:new, :create]
    resources :pages, only: [:show]

    namespace :admin do
      root to: 'pages#index'

      resources :users
      resources :pages
    end
  end

end
