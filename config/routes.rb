Rails.application.routes.draw do
  get 'main/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'main/blog', to: 'main#blog', as: :blog
  get 'main/blog_page', to: 'main#blog_page', as: :blog_page
  
  get 'main/resume', to: 'main#resume', as: :resume
  get 'main/contact', to: 'main#contact', as: :contact

  root 'main#index'
end
