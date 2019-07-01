module AtiStyle
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../../../..",__FILE__)

      def copy_views
        directory 'app/', 'app/'
        directory 'public/', 'public/'
        directory 'templates/', 'templates/'
      end

    end
  end
end
