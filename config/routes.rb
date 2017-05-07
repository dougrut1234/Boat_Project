Rails.application.routes.draw do

 get "/" => "home#index", as: "home"
 get "/assignjobs/:job_id/jobs/:boat_id" => "boat_jobs#create", as: "assign_job"
 get "/assignjobs/:job_id/jobs/:boat_id/show" => "boat_jobs#show", as: "show_assign_job"

 devise_for :users
 

  resources :jobs 

  resources :boats

  resources :boat_jobs


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	end



