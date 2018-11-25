class RemoveRequesterIdFromRequests < ActiveRecord::Migration[5.2]
  def change
    remove_column :requests, :requester_id, :integer
  end
end
