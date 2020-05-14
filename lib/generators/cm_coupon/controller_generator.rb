require 'generators/cm_coupon/generator_helpers'

module CmCoupon
  module Generators
    class ControllerGenerator < Rails::Generators::Base
      include CmCoupon::Generators::GeneratorHelpers

      source_root File.expand_path('../templates', __FILE__)

      def copy_controller
        template "controller.rb", File.join("app/controllers/admin/", "coupons_controller.rb")
      end

      def copy_view_files
        directory_path = File.join("app/views/admin", "coupons")
        empty_directory directory_path

        view_files.each do |file_name|
          template "views/#{file_name}.html.slim", File.join(directory_path, "#{file_name}.html.slim")
        end
      end

      def add_routes
        routes_string = "namespace :admin \n  do resources :coupons \nend\n"
        route routes_string
      end

    end
  end
end
