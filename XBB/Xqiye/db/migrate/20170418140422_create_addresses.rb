class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.string :address
      t.decimal :lat, precision: 10, scale: 6
      t.decimal :lng, precision: 10, scale: 6
      t.string :comment
      t.string :addressowner_type
      t.integer :addressowner_id

      t.timestamps
    end
    add_index :addresses, [:addressowner_type, :addressowner_id]
  end
end
