# frozen_string_literal: true

module Table
  class HeaderComponent < ApplicationComponent
    renders_many :rows, Table::RowComponent

    def initialize(title: nil, options: {})
      @title = title
      super(options: options)
    end
  end
end
