# frozen_string_literal: true

module Table
  class BodyComponent < ApplicationComponent
    renders_many :rows, Table::RowComponent

    def initialize(options: {})
      super(options: options)
    end
  end
end
