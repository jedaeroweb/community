class Blog < ApplicationRecord
  is_impressionable
  acts_as_commentable
  has_rich_text :content
  #acts_as_taggable
  #ActsAsTaggableOn.delimiter = ','
  #ActsAsTaggableOn.force_lowercase = true
  validates_presence_of :title
  validates_length_of :title, :minimum => 2, :maximum => 60
  belongs_to :user, :counter_cache => true
  belongs_to :blog_category, :autosave => true, :counter_cache => true
  has_one :blog_picture, dependent: :destroy
  accepts_nested_attributes_for :blog_picture, :allow_destroy => true
end
