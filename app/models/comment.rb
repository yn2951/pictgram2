class Comment < ActiveRecord::Base
  validates :user_id, presence: true
  validates :topic_id, presence: true
  validates :content, presence: true

  belongs_to :user
  belongs_to :topic
end
