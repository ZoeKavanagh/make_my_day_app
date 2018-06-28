class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|

      t.timestamps
      t.string :group_name
      t.integer :group_id
      t.integer :user_id
      t.string :user_name

    end
  end
end
