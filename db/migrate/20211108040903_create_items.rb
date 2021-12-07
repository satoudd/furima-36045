class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string     :product_name,    null: false
      t.string     :prices,          null: false
      t.references :user,       foreign_key: true, null: false
      t.text       :product_description, null: false
      t.integer    :product_id,      null: false
      t.integer    :shippingcharge_id, null: false
      t.integer    :category_id,     null: false
      t.integer    :days_to_ship_id, null: false
      t.integer    :shipping_area_id,   null: false
      t.timestamps
    end
  end
end
