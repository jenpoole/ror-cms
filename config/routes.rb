Rails.application.routes.draw do

  namespace :admin do
    resources :pages # /admin/pages
  end
  
  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  
end
