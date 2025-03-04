Rails.application.routes.draw do
  # Dashboard route (Landing page for logged-in users)
  get 'dashboard', to: 'dashboard#index', as: :dashboard

  # Login and logout routes
  get 'login', to: 'sessions#new', as: :login          # Route to display the login form
  post 'login', to: 'sessions#create'                  # Route to handle login submission
  delete 'logout', to: 'sessions#destroy', as: :logout # Route to handle logout

  # Sign-up routes
  get 'signup', to: 'users#new', as: :signup           # Route to display the signup form
  post 'signup', to: 'users#create'                    # Route to handle signup submission

  # Root path points to the welcome page (Home page for non-logged-in users)
  root 'pages#welcome' # Redirect to welcome page instead of login page

  # Redirect dashboard/index to dashboard for cleaner URL
  get 'dashboard/index', to: redirect('/dashboard')
end
