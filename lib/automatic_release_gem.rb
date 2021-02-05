# frozen_string_literal: true

require_relative 'automatic_release_gem/version'

module AutomaticReleaseGem
  class << self
    def my_usefull_method
      true
    end
  end

  class Error < StandardError; end
end
