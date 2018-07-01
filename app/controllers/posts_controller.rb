class PostsController < ApplicationController
  def new
  end

  def create
    @group = Group.find_by(id: params[:group_id])
    @post = @group.posts.create(post_params)
    @post.user_id = current_user.id
    @post.save!
    redirect_to(@group)
  end

  private

  def post_params
    params.require(:post).permit(:content)
  end
end
