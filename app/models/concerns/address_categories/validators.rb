module AddressCategories::Validators
  extend ActiveSupport::Concern

  included do
    validates :name, presence: true
  end
end