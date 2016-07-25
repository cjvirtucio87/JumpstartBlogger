class Article < ApplicationRecord
  has_many :comments
  has_many :taggings
  has_many :tags, through: :taggings
  default_scope -> { order(created_at: :desc) }

  def tag_list
    self.tags.map do |tag|
      tag.name
    end.join(', ')
  end

  def tag_list=(param)
    self.tags = param.split(', ').uniq.map do |tag|
      Tag.find_or_create_by(name: tag.strip.downcase)
    end
  end

end
