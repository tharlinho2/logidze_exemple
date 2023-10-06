class AddressCategory < ApplicationRecord
  include AddressCategories::Validators
  include AddressCategories::Search

  has_many :addresses

  def has_addresses
    addresses.any?
  end
end
