class Post < ApplicationRecord
  include PublicActivity::Model

  belongs_to :user
  validates :user_id, :content, presence: true
end
