require_dependency 'project'

module RedmineTags
  module Patches
    module ProjectPatch
      def self.included(base)
        base.send(:include, InstanceMethods)
      end
      module InstanceMethods
        def get_root_project
          if parent.present?
            parent.get_root_project
          else
            self
          end
        end
      end
    end
  end
end

