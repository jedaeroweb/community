class Gallery < ApplicationRecord
  is_impressionable
  acts_as_taggable
  validates_presence_of :title
  validates_length_of :title, :minimum => 4, :maximum => 60, :allow_blank => true
  belongs_to :user
  mount_uploader :photo, GalleryUploader
end
