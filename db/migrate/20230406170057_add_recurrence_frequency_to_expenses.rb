class AddRecurrenceFrequencyToExpenses < ActiveRecord::Migration[7.0]
  def change
    add_column :expenses, :recurrence_frequency, :string
  end
end
