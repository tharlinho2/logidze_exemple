# frozen_string_literal: true

module Table
  class PaginationComponent < ApplicationComponent

    def initialize(pagination: nil, options: {})
      @pagination = pagination
      super(options: options)
    end
  end
end