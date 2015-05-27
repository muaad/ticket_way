class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.string :location
      t.float :latitude
      t.float :longitude
      t.datetime :start_time
      t.datetime :end_time
      t.boolean :is_free, default: false
      t.float :price
      t.float :early_bird_price
      t.integer :capacity
      t.boolean :sold_out, default: false
      t.boolean :public, default: true
      t.references :category, index: true
      t.references :account, index: true

      t.timestamps null: false
    end
    add_foreign_key :events, :categories
    add_foreign_key :events, :accounts
  end
end
