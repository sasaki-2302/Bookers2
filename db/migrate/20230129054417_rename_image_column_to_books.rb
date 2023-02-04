class RenameImageColumnToBooks < ActiveRecord::Migration[6.1]
  def change
    rename_column :books, :image, :user_id
  end
end
