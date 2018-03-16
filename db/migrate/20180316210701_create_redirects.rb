class CreateRedirects < ActiveRecord::Migration[5.1]
  def change
    create_table :redirects do |t|
      t.string :old_path
      t.string :new_path
    end
  end
end
