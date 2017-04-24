class CreateStations < ActiveRecord::Migration[5.0]
  def change
    create_table :stations do |t|
      t.string :name
      t.string :address
      t.string :comment
      t.decimal :lat,precision:10,scale:6
      t.decimal :lng,precision:10,scale:6

      t.timestamps
    end
  end
end
