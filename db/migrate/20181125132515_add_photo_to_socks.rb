class AddPhotoToSocks < ActiveRecord::Migration[5.2]
  def change
    add_column :socks, :photo, :string
  end
end
