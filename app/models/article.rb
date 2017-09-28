class Article < ApplicationRecord
  validates_presence_of :title
  validates_presence_of :body

  def long_title
    "#{title} - #{published_at}"
  end
end
