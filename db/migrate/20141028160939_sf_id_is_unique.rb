class SfIdIsUnique < ActiveRecord::Migration
  def change
    add_index :chapters, :salesforce_id, unique: true
  end
end
