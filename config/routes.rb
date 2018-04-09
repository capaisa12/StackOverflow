Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

get '/questions', to: 'questions#index'
get '/questions/new', to: 'questions#new', as: 'new_questions'
post '/questions', to: 'questions#create'
get '/questions/:id', to: 'questions#show'
get '/questions/:id/edit', to: 'questions#edit', as: 'question'

end
