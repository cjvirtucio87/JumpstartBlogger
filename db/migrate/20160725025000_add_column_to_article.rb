class AddColumnToArticle < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :taggings_id, :integer
  end
end
