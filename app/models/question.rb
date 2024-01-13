class Question < ApplicationRecord
  is_impressionable
  acts_as_votable
  has_rich_text :content

  belongs_to :user, counter_cache: true
  belongs_to :program_language, counter_cache: true
  belongs_to :program_category, counter_cache: true, optional: true
  belongs_to :question_category, counter_cache: true
  has_many :answers, dependent: :destroy
  validates_presence_of :title

  has_one :question_picture, dependent: :destroy
  accepts_nested_attributes_for :question_picture, :allow_destroy => true
end
