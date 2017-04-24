class ChangeForWorkerMessages < ActiveRecord::Migration[5.0]
  def change
  	change_column :worker_messages, :birthday, :date
  end
end
