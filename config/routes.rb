QnAForum::Application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'

  resources :questions do
  	resources :answers
  end
 
  resources :answers

	devise_for :users
		resources :users, :only => :show

	root :to => "home#index"


end
