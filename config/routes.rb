Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

get '/questions', to: 'questions#index'
get '/questions/new', to: 'questions#new', as: 'new_questions'
post '/questions', to: 'questions#create'
get '/questions/:id', to: 'questions#show', as: 'question'
get '/questions/:id/edit', to: 'questions#edit', as: 'edit_question' 
patch '/questions/:id', to: 'questions#update'

end
