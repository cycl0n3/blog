class User < ApplicationRecord
  validates_uniqueness_of :email
  validates_length_of :email, :within => 5..50

  has_one :profile
  has_many :articles, -> { order('published_at DESC, title ASC') },
           :dependent => :nullify
  has_many :replies, :through => :articles, :source => :comments
end
