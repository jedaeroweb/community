class Answer < ApplicationRecord
  belongs_to :question, counter_cache: true
  belongs_to :user, counter_cache: true
  validates_presence_of :title
  has_one :answer_content, :foreign_key => :id, :dependent => :destroy, inverse_of: :answer
  validates :answer_content, :presence => true
  accepts_nested_attributes_for :answer_content, :allow_destroy => true

  def answer_content
    super || build_answer_content
  end
end
