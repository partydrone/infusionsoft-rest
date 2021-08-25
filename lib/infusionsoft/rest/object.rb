require "ostruct"
require "delegate"
require "json"

module Infusionsoft
  module REST
    class Object < SimpleDelegator
      def initialize(attributes)
        super(JSON.parse(attributes.to_json, object_class: OpenStruct))
      end
    end
  end
end
