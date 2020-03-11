module AtiStyle
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../../../..",__FILE__)

      def copy_views
        puts "=================================="
        puts " INICIANDO INSTALAÇÃO DO TEMPLATE"
        puts "==================================\n"
        puts "Copiando assets...\n"
        directory 'app/assets/stylesheets/', 'app/assets/stylesheets/'
        directory 'app/assets/vendors/', 'app/assets/vendors/'
        directory 'app/controllers/', 'app/controllers/'
        directory 'app/helpers/', 'app/helpers/'
        directory 'app/views/', 'app/views/'
        puts "Copiando javascript...\n"
        if Rails::version:String.to_i < 6
          directory 'app/assets/javascripts/', 'app/assets/javascripts/'
        else
          directory 'app/assets/javascripts/', 'app/javascripts/packs/'
        end
        directory 'public/', 'public/'
        puts "Copiando locales...\n"
        directory 'locales/', 'config/locales/'
        puts "Copiando templates scaffold...\n"
        directory 'templates/', 'lib/templates/'
        puts "Copiando initializers...\n"
        directory 'initializers/', 'config/initializers/'
      end

    end
  end
end
