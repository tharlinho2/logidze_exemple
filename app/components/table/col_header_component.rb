# frozen_string_literal: true

module Table
  class ColHeaderComponent < ApplicationComponent
    def initialize(tag: :th , options: {})
      @tag = tag
      @class = "fw-semibold"
      super(options: options)
    end

    def call
      classes = @class.dup
      classes << options[:class] unless options[:class].blank?
      content_tag(@tag, options.merge(class: classes, scope: 'col')) { content }
    end
  end
end
