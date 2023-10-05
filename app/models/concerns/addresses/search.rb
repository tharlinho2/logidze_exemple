module Addresses::Search
  extend ActiveSupport::Concern

  included do
    include SearchCop

    search_scope :search do
      attributes :name, :state_name, :city_name, :address_line_1
      attributes :address_number, :address_line_2, :district_name
      attributes address_category: [ "address_category.name" ]
    end
  end
end