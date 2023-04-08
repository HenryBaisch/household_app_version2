class CreateExpenses < ActiveRecord::Migration[7.0]
  def change
    create_table :expenses do |t|
      t.string :name
      t.text :description
      t.decimal :amount
      t.date :due_date
      t.boolean :recurring
      t.string :recurring_frequency
      t.references :group, null: false, foreign_key: true

      t.timestamps
    end
  end
end
