class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.string :photo
      t.text :description
      t.string :fabric
      t.integer :kind
      t.integer :size
      t.integer :color
      t.integer :requester_id

      t.timestamps
    end
  end
end
