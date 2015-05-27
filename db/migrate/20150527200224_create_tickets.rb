class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.references :event, index: true
      t.references :account, index: true
      t.string :invoice_no
      t.references :user, index: true
      t.boolean :paid_for, default: false
      t.boolean :active, default: false

      t.timestamps null: false
    end
    add_foreign_key :tickets, :events
    add_foreign_key :tickets, :accounts
    add_foreign_key :tickets, :users
  end
end
