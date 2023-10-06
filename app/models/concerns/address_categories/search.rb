module AddressCategories::Search
  extend ActiveSupport::Concern

  included do
    include SearchCop

    search_scope :search do
      attributes :name
    end
  end
end