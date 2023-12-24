class Question < ApplicationRecord
  is_impressionable
  belongs_to :user, counter_cache: true
  belongs_to :question_category, counter_cache: true
  has_many :answers, dependent: :destroy
  validates_presence_of :title

  has_one :question_picture, dependent: :destroy
  accepts_nested_attributes_for :question_picture, :allow_destroy => true

  has_rich_text :content
end
