class AddUserIdToSocks < ActiveRecord::Migration[5.2]
  def change
    change_table :socks do |t|
      t.belongs_to :user
    end
  end
 end
