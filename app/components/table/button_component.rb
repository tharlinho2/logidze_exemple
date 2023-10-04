# frozen_string_literal: true

class Table::ButtonComponent < ApplicationComponent

  def initialize(link:, title:, options: {})
    @link = link
    @title = title
    super(options: options)
  end
end
