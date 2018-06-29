class GroupsController < ApplicationController
  def new
    @users = User.all
    @group = Group.new
  end

  def create
    @group = Group.create(group_params)
    redirect_to @group
  end

  def show
    @group = Group.find(params[:id])
  end


  private

  def group_params
    params.require(:group).permit(:name)
  end

end
