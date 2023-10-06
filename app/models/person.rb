class Person < ApplicationRecord
  include People::Search
  include People::Validators
end
