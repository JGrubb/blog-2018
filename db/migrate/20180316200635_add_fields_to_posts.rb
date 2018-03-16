class AddFieldsToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :summary, :text
    add_column :posts, :previous_id, :integer
    add_column :posts, :published, :boolean
    add_column :posts, :pub_date, :datetime
    add_index :posts, :previous_id
  end
end
