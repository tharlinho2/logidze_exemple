module People::Search
  extend ActiveSupport::Concern

  included do
    include SearchCop

    search_scope :search do
      attributes :name, :phone_number, :mobile_phone_number, :cpf, :email
    end
  end
end