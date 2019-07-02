module AtiStyle
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../../../..",__FILE__)

      def copy_views
        puts "=================================="
        puts " INICIANDO INSTALAÇÃO DO TEMPLATE"
        puts "==================================\n"
        puts "Copiando templates scaffold...\n"
        directory 'templates/', 'lib/templates/'

        # Rename template files addin .tt
        puts "Difinindo arquivos templates scaffold...\n"
        path = 'lib/templates/erb/scaffold'
        Dir.open(path).each do |f|
          File.rename(f, "#{f}.tt")
        end
      end

    end
  end
end
