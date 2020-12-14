Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :students, only: [:index, :show, :update]
  
  get 'students', to: 'students#index'
  get 'students/:id/activate_student', to: 'students#update', as:'activate_student'

  # GET '/students/:id/activate'

end
