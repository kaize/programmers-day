ProgrammersDay::Application.routes.draw do
  scope module: :web do
    root to: 'welcome#show'

    resource :session
    resources :users

    namespace :admin do
      root to: 'welcome#show'
    end
  end

end
