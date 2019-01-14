class MainController < ApplicationController
  def index
    render 'main/index', format: :html
  end

  def blog
    render 'blog/blog_page', format: :html
  end
  
  def blog_page
    @file = File.read('app/views/blog/blog_entries/'+params[:format]+'.md')
    render 'blog/blog_entry', format: :html
  end

  def resume
    render 'resume/resume', format: :html
  end

  def contact
    render 'contact/contact', format: :html
  end
end
