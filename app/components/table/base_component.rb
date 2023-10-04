# frozen_string_literal: true

module Table
  class BaseComponent < ApplicationComponent
    renders_one :header, Table::HeaderComponent
    renders_one :body, Table::BodyComponent
    renders_one :button, Table::ButtonComponent
    renders_one :pagination, Table::PaginationComponent

    def initialize(title: nil, options: {})
      @title = title
      super(options: options)
    end
  end
end
