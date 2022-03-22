class LikesController < ApplicationController
  before_action :authenticate_user!

  def create
    if !already_liked?
      @post = Post.find(params[:post_id])
      @post.likes.create!(user_id: current_user.id)
      redirect_to root_path
    end
  end

  def destroy
    like = current_user.likes.find(params[:id])
    post = like.post
    like.destroy
    redirect_to root_path
  end

  private

  def already_liked?
    Like.where(user_id: current_user.id, post_id: params[:post_id]).exists?
  end
end
