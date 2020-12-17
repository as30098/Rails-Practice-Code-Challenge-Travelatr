class Blogger < ApplicationRecord
  has_many :posts
  has_many :destinations, through: :posts

validates :name, presence: true
validates :bio, presence: true
validates :name, uniqueness: true
validates :bio, length: {minimum: 30}

def featured_post
end

end
