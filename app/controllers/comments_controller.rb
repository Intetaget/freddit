class CommentsController < ApplicationController
  def new
    @comment = Comment.new
    render :new
  end

  def create
    Comment.create(body: params[:comment], link_id: params[:id], user_id: current_user.id)
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
    comment = Comment.find(params[:id])
    comment.destroy
    redirect_to links_path
  end
end
