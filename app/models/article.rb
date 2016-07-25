class Article < ApplicationRecord
  has_many :taggings
  has_many :comments, through: :taggings
end
