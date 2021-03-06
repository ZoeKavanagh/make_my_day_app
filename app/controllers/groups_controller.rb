require 'net/http'
require 'json'

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
    @group_posts = @group.posts
    @post = Post.new
      if params[:date] == nil && params[:location] == nil
        @events = []
      else
      @events = ApiRequest.make_request(
        params[:date],
        params[:location],
        params[:price_range],
        params[:category]
      )
    end
  end

  private

  def group_params
    params.require(:group).permit(:name)
  end
end
