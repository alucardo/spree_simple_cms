class Spree::PossiblePage
  def self.matches?(request) 
    return false if request.path =~ /(^\/+(admin|account|cart|checkout|content|login|pg\/|orders|products|s\/|session|signup|shipments|states|t\/|tax_categories|user)+)/
    !Spree::Page.find_by_slug(request.path).nil?
  end
end

Spree::Core::Engine.routes.draw do

  namespace :admin do 
    resources :pages
  end


  constraints(Spree::PossiblePage) do
    get '*page_path', :to => 'pages#show', :as => :page
  end
end
