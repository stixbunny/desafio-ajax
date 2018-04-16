Rails.application.routes.draw do

	resources :posts do
		resources :comments, only: [:create, :destroy, :update, :edit]
	end

	devise_for :users, controllers: {
		sessions: 'users/sessions',
		registrations: 'users/registrations',
		omniauth_callbacks: 'users/omniauth_callbacks'
	}

	root 'posts#index'
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
