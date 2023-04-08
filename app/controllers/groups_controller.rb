class GroupsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_group, only: [:show, :edit, :update, :destroy]

  def index
    @groups = current_user.groups
  end

  def show
  end

  def new
    @group = current_user.groups.build
  end

  def create
    @group = current_user.groups.build(group_params)

    if @group.save
      flash[:notice] = 'Group was successfully created.'
      redirect_to @group
    else
      flash.now[:alert] = 'There was an error creating the group. Please try again.'
      render :new
    end
  end

  def edit
  end

  def update
    if @group.update(group_params)
      flash[:notice] = 'Group was successfully updated.'
      redirect_to @group
    else
      flash.now[:alert] = 'There was an error updating the group. Please try again.'
      render :edit
    end
  end

  def destroy
    if @group.destroy
      flash[:notice] = 'Group was successfully deleted.'
      redirect_to groups_path
    else
      flash.now[:alert] = 'There was an error deleting the group. Please try again.'
      render :show
    end
  end

  private

  def set_group
    @group = current_user.groups.find(params[:id])
  end

  def group_params
    params.require(:group).permit(:name)
  end
end
