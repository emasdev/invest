class GroupsController < ApplicationController
  def index
    @groups = Group.all
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    if @group.save then
      redirect_to "/groups", notice: 'Group has been created'
    else
      redirect_to "/groups/new", notice: @group.errors.full_messages
    end
  end

  private

  def group_params
    params.require(:group).permit(:name, :icon)
  end
end
