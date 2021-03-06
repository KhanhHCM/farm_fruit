Rails.application.routes.draw do
  devise_for :farmers
  # devise_for :users, controllers: { sessions: "users/sessions" }
  devise_for :users, path: "auth", path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'cmon_let_me_in' }

	devise_scope :user do
	  get "sign_in", to: "devise/sessions#new"
	end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root to: 'home#index'
end
