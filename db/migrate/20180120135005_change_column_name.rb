class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
      rename_column :books, :Description, :description
 end
end
