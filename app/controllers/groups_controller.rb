class GroupsController < ApplicationController
  def new
    @user = User.new
    @group = Group.all
  end

  def create
    @user = User.new(params[:user])
    @group = Group.find(params[:group][:group_id])
    if @user.save
      @group.users << @user
    else
      render :new
    end
  end
end
