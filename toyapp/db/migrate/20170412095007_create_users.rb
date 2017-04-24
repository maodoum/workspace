class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :sex
      t.int :age
      t.string :email
      t.string :tel

      t.timestamps
    end
  end
end
