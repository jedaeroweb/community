class Notice < ApplicationRecord
  is_impressionable
  acts_as_commentable
  acts_as_votable

  validates_presence_of :title
  has_one :notice_content, :foreign_key => :id, :dependent => :destroy, inverse_of: :notice
  has_one :notice_picture, dependent: :destroy

  validates :notice_content, :presence => true
  accepts_nested_attributes_for :notice_content, :allow_destroy => true, :update_only => true
  accepts_nested_attributes_for :notice_picture, :allow_destroy => true

  def notice_content
    super || build_notice_content
  end
end
