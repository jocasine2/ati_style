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
        puts "Copiando templates scaffold...\n"
        directory 'templates/', 'lib/templates/'

        # Rename template files addin .tt
        puts "Difinindo arquivos templates scaffold...\n"
        path = 'lib/templates/erb/scaffold/*'
        Dir.glob(path).each do |f|
          File.rename(f, "#{f}.tt")
        end
        path = 'lib/templates/rails/scaffold_controller/*'
        Dir.glob(path).each do |f|
          File.rename(f, "#{f}.tt")
        end
      end

    end
  end
end
