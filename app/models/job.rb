class Job < ApplicationRecord
  is_impressionable
  acts_as_commentable
  has_rich_text :content

  belongs_to :user, counter_cache: true
  validates_presence_of :title
end
