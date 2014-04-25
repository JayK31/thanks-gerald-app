Rails.application.routes.draw do
  root 'welcome#index'

  post '/reverse' => 'welcome#reverse'

end
