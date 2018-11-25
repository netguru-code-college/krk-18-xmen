class CreateSocks < ActiveRecord::Migration[5.2]
  def change
    create_table :socks do |t|

      t.text :description
      t.integer :size
      t.integer :kind
      t.integer :color
      t.string :material

      t.timestamps
    end
  end
end
