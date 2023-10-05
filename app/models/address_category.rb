class AddressCategory < ApplicationRecord
  validates :name, presence: true

  has_many :addresses

  def has_addresses
    addresses.any?
  end
end
