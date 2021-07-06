class HomeController < ApplicationController
  before_action :index
  def index
    @postcards = Postcard.all
  end

  def about
    render 'home/about'
  end

  def new
    @postcard = Postcard.new

    render 'home/new'
  end

  # POST /postcards
  def create
    @postcard = Postcard.create(postcard_params)

    redirect_to root_path, flash: { success: "New postcard has been created." }
  end

  def postcard
    @postcard = Postcard.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_back(fallback_location: root_path,
                  flash: { error: "#{@type.singularize} #{params[:id]} does not exist." })
  end

  def postcard_params
    params.permit(:title, :body, :from)
  end
end
