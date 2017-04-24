class WorkerMessage < ApplicationRecord
	  #validate message
  # validates_presence_of :worker_id,:message =>"工号必须写"
  validates :worker_id, presence:true
  validates :worker_name, presence:true
  # validates_format_of :role, :with=>/["请选择"]/, :message=>"qinn"

end
