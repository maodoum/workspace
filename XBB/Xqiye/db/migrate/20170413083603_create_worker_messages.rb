class CreateWorkerMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :worker_messages do |t|
      t.string :worker_id
      t.string :worker_name
      t.string :sex
      t.integer :age
      t.datetime :birthday
      t.string :role
      t.string :academic
      t.integer :factory_id
      t.string :region
      t.string :delFlag
      t.string :S_01
      t.string :S_o2

      t.timestamps
    end
  end
end
