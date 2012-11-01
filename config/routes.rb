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
      resources :timepad_items, only: [] do
        collection do
          put :export
        end
      end
    end
  end

  namespace :api do
    resources :users, only: [:index]
    resources :timepad_maillists, only: [] do
      collection do
        put :import
      end
    end
  end

end
