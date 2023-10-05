class Address < ApplicationRecord
  include Addresses::Search
  include Addresses::Validators

  belongs_to :address_category


  ADDRESS_TYPES = {
    shipping: 0,
    billing: 1
  }.freeze

  as_enum :address_type, ADDRESS_TYPES
end
