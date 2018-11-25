class AddUserToRequests < ActiveRecord::Migration[5.2]
  def change
    change_table :requests do |t|
      t.belongs_to :user
    end
  end
end
