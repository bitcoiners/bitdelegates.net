module Refinery
  module Dacs
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Dacs

      engine_name :refinery_dacs

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "dacs"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.dacs_admin_dacs_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/dacs/dac',
            :title => 'name'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Dacs)
      end
    end
  end
end
