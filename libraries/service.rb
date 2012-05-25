class Chef
  class Resource
    class Service

      def enable?
        if node["chef_client"]["enable"]
          :enable
        else
          :disable
        end
      end

      def start?
        if node["chef_client"]["start"]
          :start
        else
          :stop
        end
      end

    end
  end
end
