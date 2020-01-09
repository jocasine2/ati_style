module AtiStyle
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../../../..",__FILE__)

      def copy_views
        puts "=================================="
        puts " INICIANDO INSTALAÇÃO DO TEMPLATE"
        puts "==================================\n"
        puts "Copiando assets...\n"
        directory 'app/', 'app/'
        directory 'public/', 'public/'
        puts "Copiando locales...\n"
        directory 'locales/', 'config/locales/'
        puts "Copiando templates scaffold...\n"
        directory 'templates/', 'lib/templates/'
      end

    end
  end
end
