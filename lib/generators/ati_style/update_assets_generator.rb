module AtiStyle
  module Generators
    class UpdateAssetsGenerator < Rails::Generators::Base
      source_root File.expand_path("../../../..",__FILE__)

      def copy_views
        puts "=================================="
        puts " INICIANDO INSTALAÇÃO DO TEMPLATE"
        puts "==================================\n"
        puts "Copiando assets...\n"
        directory 'app/assets/stylesheets/', 'app/assets/stylesheets/'
        directory 'app/assets/vendors/', 'app/assets/vendors/'
        directory 'app/helpers/', 'app/helpers/'
        directory 'app/views/', 'app/views/'
        puts "Copiando javascript...\n"
        if Rails::VERSION::STRING.to_i < 6
          directory 'app/assets/javascripts/', 'app/assets/javascripts/'
        else
          directory 'app/assets/javascripts/', 'app/javascripts/packs/'
        end
        puts "Atualizando public...\n"
        directory 'public/', 'public/'
        puts "Atualizando locales...\n"
        directory 'locales/', 'config/locales/'
        puts "Atualizando templates scaffold...\n"
        directory 'templates/', 'lib/templates/'
        
        puts "Copiando initializers...\n"
        directory 'initializers/', 'config/initializers/'
      end
    end
  end
end