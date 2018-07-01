class GroupsController < ApplicationController
  def new
    @users = User.all
    @group = Group.new
  end

  def create
    @group = Group.create(group_params)
    (params[:group][:user_ids]).each do |i|
      GroupUser.create({
        user_id: params[:group][:user_ids][i.to_i],
        group_id: @group.id
      })
    end
    redirect_to @group
  end

  def show
    @group = Group.find(params[:id])
    @post = Post.new
  end

  private

  def group_params
    params.require(:group).permit(:name)
  end
end
