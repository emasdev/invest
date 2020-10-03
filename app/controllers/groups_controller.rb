class GroupsController < ApplicationController
  before_action :logged_in?
  def index
    @groups = Group.all.includes([:investments])
  end

  def new
    @group = current_user.groups.new
  end

  def create
    @group = current_user.groups.new(group_params)
    if @group.save then
      redirect_to "/groups", notice: 'Group has been created'
    else
      redirect_to "/groups/new", notice: @group.errors.full_messages
    end
  end

  def show
    @group = Group.includes([:investments]).find(params[:id])
    @investments = @group.investments.includes([:groups])
  end

  private

  def group_params
    params.require(:group).permit(:name, :icon, :goal)
  end
end
