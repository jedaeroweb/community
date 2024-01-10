class Talk < ApplicationRecord
  is_impressionable
  acts_as_commentable
  has_rich_text :content

  validates_presence_of :title
  belongs_to :user, counter_cache: true
  has_many :talk_pictures, dependent: :destroy
  accepts_nested_attributes_for :talk_pictures, :allow_destroy => true
end
