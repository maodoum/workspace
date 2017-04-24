class AddEmailToWorkeraccounts < ActiveRecord::Migration[5.0]
  def change
    add_column :workeraccounts, :email, :string
  end
end
