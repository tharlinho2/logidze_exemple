# frozen_string_literal: true

class AlertComponent < ApplicationComponent
  def initialize(messages:, options: {})
    @messages = messages
    super(options: options)
  end
end
