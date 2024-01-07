class TalkPicture < ApplicationRecord
  belongs_to :talk, counter_cache: true
  mount_uploader :picture, TalkPictureUploader
end
