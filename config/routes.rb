Rails.application.routes.draw do
  get 'main/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'main/blog', controller: 'main#blog', as: :blog
  get 'main/resume', controller: 'main#resume', as: :resume
  get 'main/contact', controller: 'main#contact', as: :contact

  root 'main#index'
end
