class AddColumnToComments < ActiveRecord::Migration[5.0]
  def change
    add_column :comments, :author, :string
    add_column :comments, :body, :text
  end
end
