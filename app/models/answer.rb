class Answer < ApplicationRecord
  belongs_to :question, counter_cache: true
  belongs_to :user, counter_cache: true
  validates_presence_of :content

  has_rich_text :content
end
