Rails.application.routes.draw do 
  root 'projects#signup'
  get '/projects/signup' ,to: 'projects#signpage'
  get '/projects/login' , to: 'projects#loginpage'
  post '/projects/signup',to: 'projects#signpage_new'
  post '/projects/login',to: 'projects#loginpage_new'
end
