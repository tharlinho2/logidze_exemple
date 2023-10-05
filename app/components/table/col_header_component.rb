# frozen_string_literal: true

module Table
  class ColHeaderComponent < ApplicationComponent
    def initialize(tag: :th , options: {})
      @tag = tag
      @class = "fw-medium position-sticky bg-light text-body-secondary small pb-3 "
      @styles = "top: 0; z-index: 2; "
      super(options: options)
    end

    def call
      classes = @class.dup
      styles = @styles.dup
      classes << options[:class] unless options[:class].blank?
      styles << options[:style] unless options[:style].blank?
      content_tag(@tag, options.merge(class: classes, style: styles, scope: 'col')) { content }
    end
  end
end
