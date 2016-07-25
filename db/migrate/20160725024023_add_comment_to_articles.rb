class AddCommentToArticles < ActiveRecord::Migration[5.0]
  def change
    add_reference :articles, :comment, foreign_key: true
  end
end
