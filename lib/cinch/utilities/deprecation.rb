# frozen_string_literal: true

module Cinch
  module Utilities
    # @since 2.0.0
    # @api private
    module Deprecation
      def self.print_deprecation(version, method, instead = nil)
        s = "Deprecation warning: Beginning with version #{version}, #{method} should not be used anymore."
        if !instead.nil?
          s << " Use #{instead} instead."
        end
        warn s
        warn caller
      end
    end
  end
end
