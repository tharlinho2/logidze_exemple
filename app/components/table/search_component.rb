# frozen_string_literal: true

module Table
  class SearchComponent < ApplicationComponent
    def initialize(link:, title:, query_name: 'q', query: '', options: {})
      @link = link
      @title = title
      @query_name = query_name
      @query = query
      super(options: options)
    end
  end
end
