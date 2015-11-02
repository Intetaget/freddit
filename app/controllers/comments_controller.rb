class CommentsController < ApplicationController
  def new
    @comment = Comment.new
    render :new
  end

  def create
    comment = Comment.create(body: params[:body], link_id: params[:link_id], user_id: params[:user_id])
    redirect_to link_path
  end

  def edit
    comment = Comment.find(params[:id])
    render :edit
  end

  def update
    comment = Comment.find(params[:id])
    comment.update(body: params[:body])
    redirect_to link_path(comment.link_id)
  end

  def destroy
    coment = Comment.find(params[:id])
    comment.destroy
    redirect_to links_path
  end
end
