class MainController < ApplicationController
  def index
    render 'main/index', format: :html
  end

  def blog
    render 'blog/blog_page', format: :html
  end

  def resume
    
  end

  def contact

  end
end
