Rails.application.routes.draw do

  namespace :buy do
  	devise_for :customers, controllers: {
  		sessions: 'buy/customers/sessions',
  		registrations: 'buy/customers/registrations',
  		passwords: 'buy/customers/passwords'
  	}
  	resources :items, only: [:index, :show]
  end

  namespace :sale do
  	devise_for :clerks, controllers: {
  		sessions: 'sale/clerks/sessions',
  		registrations: 'sale/clerks/registrations',
  		passwords: 'sale/clerks/passwords'
  	}
  	resources :items, only: [:index, :show]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
