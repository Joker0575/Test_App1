class HomeController < ApplicationController

  # layout :false
  layout "home"

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
end
