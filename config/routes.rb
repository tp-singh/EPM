EPM::Application.routes.draw do
  root 'home#index'

  devise_for :organisations

  constraints(EpmSubdomain) do
    devise_for :users
   # root 'home#login'
  end
end
