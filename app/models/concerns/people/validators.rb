module People::Validators
  extend ActiveSupport::Concern

  included do
    validates :name, :phone_number, :mobile_phone_number, :cpf, :email, presence: true
  end
end