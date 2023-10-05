module Addresses::Validators
  extend ActiveSupport::Concern

  included do
    validates :name, :state_name, :city_name, :address_number, :address_line_1, presence: true
    validates :address_type_cd, :address_category, :district_name, presence: true
  end
end