EPM::Application.routes.draw do
require 'epm_subdomain'

  constraints(EpmSubdomain) do
    get '/', :to => 'home#login'
    devise_for :users
  end

  constraints(Domain) do
    get '/', :to => 'home#index'
    devise_for :organisations
  end
  

end
