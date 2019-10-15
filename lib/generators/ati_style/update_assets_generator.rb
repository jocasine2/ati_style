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
        puts "Atualizando templates scaffold...\n"
        directory 'templates/', 'lib/templates/'
      end
    end
  end
end