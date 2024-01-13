class Company < ApplicationRecord
  is_impressionable
  acts_as_votable
  has_rich_text :content

  belongs_to :user, counter_cache: true
  has_many :company_addresses, dependent: :destroy
  has_many :company_pictures, dependent: :destroy

  validates_presence_of :title, :phone
  accepts_nested_attributes_for :company_addresses, :allow_destroy => true
  accepts_nested_attributes_for :company_pictures, :allow_destroy => true
end
