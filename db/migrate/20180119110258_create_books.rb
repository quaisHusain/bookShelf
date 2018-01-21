class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :ISBN
      t.string :Description
      t.string :Language
      t.string :cover_image

      t.timestamps
    end
  end
end
