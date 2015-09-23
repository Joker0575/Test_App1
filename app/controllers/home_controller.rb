class HomeController < ApplicationController

  # layout :false
  layout "home", :only => [:index]

  def index
    # render html:"<strong>This is sample text</strong>".html_safe
    # render xml:Product.all
    # render js:"alert('hello')"
    # render json:Product.all
    # TestWorker.perform_async("sample message")
    # render body:'this is raw text',status:200

    # render method accepts 4 parameters layout,content_type,location,status
  end

  def create
    product=Product.new(params[:product])
  end

  def sign_up
    render :layout => false
  end

  def sign_in
    render :layout => false
  end

  def about_us
  end

  def privacy
  end

  def contact_us
    render :layout => false
  end
end
