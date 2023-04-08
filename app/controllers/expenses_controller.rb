class ExpensesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_group

  # ... other actions ...

  def create
    @expense = @group.expenses.build(expense_params)
    @expense.user = current_user

    if @expense.save
      flash[:notice] = 'Expense was successfully created.'
      redirect_to group_path(@group)
    else
      flash.now[:alert] = 'There was an error creating the expense. Please try again.'
      render 'groups/show'
    end
  end

  # ... other actions ...

  private

  def set_group
    @group = current_user.groups.find(params[:group_id])
  end

  def expense_params
    params.require(:expense).permit(:name, :description, :amount, :due_date, :recurring, :recurrence_frequency)
  end
end
