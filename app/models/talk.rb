class Talk < ApplicationRecord
  is_impressionable
  belongs_to :user, counter_cache: true
  validates_presence_of :title
  has_many :talk_comment, :dependent => :destroy
  has_rich_text :content
end
