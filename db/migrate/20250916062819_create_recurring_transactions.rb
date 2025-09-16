class CreateRecurringTransactions < ActiveRecord::Migration[8.0]
  def change
    create_table :recurring_transactions do |t|
      t.decimal :amount
      t.string :interval
      t.date :start_date
      t.string :name
      t.text :description
      t.references :bank_account, null: false, foreign_key: true

      t.timestamps
    end
  end
end
