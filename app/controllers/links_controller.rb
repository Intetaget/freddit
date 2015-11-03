class LinksController < ApplicationController
  def index
    @links = Link.page(params[:page]).per(10)
    render :index
  end

  def new
    @link = Link.new
    render :new
  end

  def create
    #binding.pry
    link = Link.create(
                   title:   params[:title],
                   url:     params[:url],
                   user_id: params[:user_id])
    redirect_to link_path(link.id)
  end

  def show
    @link = Link.find(params[:id])
    render :show
  end

  def edit
    @link = Link.find(params[:id])
    render :edit
  end

  def update
    link = Link.find(params[:id])
    link.update(
        title:   params[:title],
        url:     params[:url])
    redirect_to link_path(link)
  end

  def destroy
    link = Link.find(params[:id])
    link.destroy
    redirect_to links_path
  end
end