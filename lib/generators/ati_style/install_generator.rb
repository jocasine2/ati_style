module AtiStyle
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../../../..",__FILE__)

      def copy_views
        directory 'app/', 'app/'
        directory 'public/', 'public/'
        directory 'templates/', 'lib/templates/'

        # Rename template files addin .tt
        path = 'lib/templates/erb/scaffold'
        Dir.open(path).each do |f|
          File.rename(f, "#{f}.tt")
        end
      end

    end
  end
end
