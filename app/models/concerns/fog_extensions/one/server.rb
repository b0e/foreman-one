module FogExtensions
  module One
    module Server
      extend ActiveSupport::Concern

      include ActionView::Helpers::NumberHelper

      def vminterfaces
        interfaces
      end

      def select_nic(fog_nics, nic)
        fog_nics.detect {|fn| fn.vnet == nic.compute_attributes['vnetid']} # grab any nic on the same network
      end

      def vminterfaces_attributes=(attributes)
        true
      end

      def template_id
        ""
      end

      def vm_description
        _("%{cpus} CPUs and %{memory} memory") % {:cpus => cpu, :memory => number_to_human_size(memory.to_i)}
      end
    end
  end
end
