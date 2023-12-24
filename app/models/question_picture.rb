class QuestionPicture < ApplicationRecord
  belongs_to :question, autosave: true, counter_cache: true
  mount_uploader :picture, QuestionPictureUploader
end
