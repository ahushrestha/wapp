Rails.application.routes.draw do
  root to: 'pages#home'

  get 'home', to: 'pages#home', as: 'home'
  get 'about', to: 'pages#about', as: 'about'
  get 'shrstha2', to: 'pages#shrstha2', as: 'shrstha2'
  
  get 'multiple_choice_questions/:id/ask', to: 'multiple_choice_questions#ask', as: 'ask_multiple_choice_question'
  post 'multiple_choice_questions/:id/ask', to: 'multiple_choice_questions#check_answer'
  get 'multiple_choice_questions', to: 'multiple_choice_questions#index', as: 'multiple_choice_questions'
  post 'multiple_choice_questions', to: 'multiple_choice_questions#create'
  get 'multiple_choice_questions/new', to: 'multiple_choice_questions#new', as: 'new_multiple_choice_question'
  get 'multiple_choice_questions/:id/edit', to: 'multiple_choice_questions#edit', as: 'edit_multiple_choice_question'
  get 'multiple_choice_questions/:id', to: 'multiple_choice_questions#show', as: 'multiple_choice_question'
  patch 'multiple_choice_questions/:id', to: 'multiple_choice_questions#update'
  put 'multiple_choice_questions/:id', to: 'multiple_choice_questions#update'
  delete 'multiple_choice_questions/:id', to: 'multiple_choice_questions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
