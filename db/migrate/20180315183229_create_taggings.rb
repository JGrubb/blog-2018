class CreateTaggings < ActiveRecord::Migration[5.1]
  def change
    create_table :taggings do |t|
      t.references :post, foreign_key: true
      t.references :tag, foreign_key: true

    end
  end
end
