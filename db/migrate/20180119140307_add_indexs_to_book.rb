class AddIndexsToBook < ActiveRecord::Migration[5.1]
  def change
  	add_index :books, [:author, :Description]
  end
end
