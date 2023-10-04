# frozen_string_literal: true

module Table
  class ColComponent < ApplicationComponent
    def initialize(tag: :td, options: {})
      @tag = tag
      @class = "align-middle "
      super(options: options)
    end

    def call
      classes = @class.dup
      classes << options[:class] unless options[:class].blank?
      content_tag(@tag, options.merge(class: classes)) { content }
    end
  end
end
