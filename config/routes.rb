Rails.application.routes.draw do
  # show-only public path for pages without slugs
  resources :pages, only: [:show]

  # create paths /admin/pages
  namespace :admin do
    resources :pages 
  end
  
  # loop through each page (that has a slug) and create route based on their slug
  Page.where.not("slug", nil).all.each do |page|
    get "/#{page.slug}", controller: "pages", action: "show", id: page.id
  end
  
  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  
end
