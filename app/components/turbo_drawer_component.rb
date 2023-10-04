# frozen_string_literal: true

class TurboDrawerComponent < ApplicationComponent
  include Turbo::FramesHelper

  def initialize(title:, options: {})
    @title = title
    super(options: options)
  end
end
