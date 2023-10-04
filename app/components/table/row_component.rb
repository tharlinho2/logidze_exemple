# frozen_string_literal: true

module Table
  class RowComponent < ApplicationComponent
    renders_many :cols, Table::ColComponent
    renders_many :col_hs, Table::ColHeaderComponent

    def initialize(tag: :tr, link: nil, options: {})
      @tag = tag
      @link = link
      super(options: options)
    end
  end
end
