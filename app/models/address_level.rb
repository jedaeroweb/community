class AddressLevel < ActiveRecord::Base
  validates_presence_of  :title
  has_many :addresses, dependent: :destroy
end
