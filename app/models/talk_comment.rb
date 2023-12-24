class TalkComment < ApplicationRecord
  validates_presence_of :content
  belongs_to :user
  belongs_to :talk
end
