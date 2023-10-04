# frozen_string_literal: true

class ApplicationComponent < ViewComponent::Base
  include Pagy::Frontend

  attr_reader :options

  protected

  def initialize(options: {})
    super
    @options = options
  end
end
