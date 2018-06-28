class CreateApiRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :api_requests do |t|

      t.timestamps
    end
  end
end
