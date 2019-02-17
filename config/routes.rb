Rails.application.routes.draw do
  root to: 'pages#home'
  get 'home', to: 'pages#home', as: 'home'
  get 'about', to: 'pages#about', as: 'about'
  get 'shrstha2', to: 'pages#shrstha2', as: 'shrstha2'
  get 'multiple_choice_questions/:id/ask', to: 'multiple_choice_questions#ask', as: 'ask_multiple_choice_question'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
