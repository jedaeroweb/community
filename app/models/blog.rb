class Blog < ApplicationRecord
  is_impressionable
  acts_as_taggable
  acts_as_commentable
  acts_as_votable
  has_rich_text :content
  #acts_as_taggable
  #ActsAsTaggableOn.delimiter = ','
  #ActsAsTaggableOn.force_lowercase = true
  belongs_to :program_language, counter_cache: true
  belongs_to :program_category, counter_cache: true, optional: true
  validates_presence_of :title
  validates_length_of :title, :minimum => 2, :maximum => 60
  belongs_to :user, :counter_cache => true
  belongs_to :blog_category, :autosave => true, :counter_cache => true
  has_one :blog_picture, dependent: :destroy
  accepts_nested_attributes_for :blog_picture, :allow_destroy => true
end
