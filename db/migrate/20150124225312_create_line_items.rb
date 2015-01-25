class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.references :order, index: true
      t.references :product, index: true
      t.references :cart, index: true
      t.decimal :price
      t.integer :amount

      t.timestamps null: false
    end
  end
end
