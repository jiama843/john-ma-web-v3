class MainController < ApplicationController
  def index
    render 'main/index', format: :html
  end

  def blog
    render 'blog/blog_page', format: :html
  end
  
  def blog_page
    file = File.read('app/views/blog/blog_entries/'+params[:format]+'.md')
    @doc = Kramdown::Document.new(file)
    render 'blog/blog_entry', format: :html
  end

  def resume

  end

  def contact

  end
end
