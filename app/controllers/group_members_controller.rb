class GroupMembersController < ApplicationController
    before_action :authenticate_user!
    before_action :set_group
  
    def create
      @group_member = @group.group_members.build(user_id: params[:user_id])
  
      if @group_member.save
        flash[:notice] = 'User successfully added to the group.'
      else
        flash[:alert] = 'Unable to add user to the group.'
      end
  
      redirect_to group_path(@group)
    end
  
    private
  
    def set_group
      @group = current_user.groups.find(params[:group_id])
    end
end
  
