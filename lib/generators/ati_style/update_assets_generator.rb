module AtiStyle
  module Generators
    class UpdateAssetsGenerator < Rails::Generators::Base
      source_root File.expand_path("../../../..",__FILE__)

      def copy_views
        puts "=================================="
        puts " INICIANDO INSTALAÇÃO DO TEMPLATE"
        puts "==================================\n"
        puts "Atualizando css...\n"
        directory 'app/assets/stylesheets/', 'app/assets/stylesheets/'
        puts "Atualizando js...\n"
        directory 'app/assets/javascripts/', 'app/assets/javascripts/'
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