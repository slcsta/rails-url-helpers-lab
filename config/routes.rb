Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # A user can navigate to /students to view all of the students
  # Route to view has an index page
  # Should have individual students' show page

  resources :students, only: [:index, :show] #, as:'students'

  get 'students/:id/activate', to: 'students#activate', as:'activate-student'
end
