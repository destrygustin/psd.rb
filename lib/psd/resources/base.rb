require 'psd/resources/base'

class PSD
  class Resource
    module Section
      class Base
        def self.resource_id(id = nil)
          @resource_id = id unless id.nil?
          @resource_id
        end

        def self.name(name = nil)
          @name = name unless name.nil?
          @name
        end

        def initialize(file, resource)
          @file = file
          @resource = resource
        end

        def resource_id; self.class.resource_id; end
        def name; self.class.name; end
      end
    end
  end
end