class RenameNameToAuthor < ActiveRecord::Migration[5.0]
  def change
    rename_column :comments, :name, :author
  end
end
