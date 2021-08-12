class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :blog
  validates :content, :title, presence: true
end
