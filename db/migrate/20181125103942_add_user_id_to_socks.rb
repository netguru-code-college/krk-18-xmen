class AddUserIdToSocks < ActiveRecord::Migration[5.2]
  def change
    add_column :socks, :user_id, :integer
  end
end
