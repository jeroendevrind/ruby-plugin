require 'fastlane/action'
require_relative '../helper/jeroen_helper'

module Fastlane
  module Actions
    class JeroenAction < Action
      def self.run(params)
        # do whatever you want
        puts("👨🏻‍💻 workshop")
        require 'rqrcode'

        qr = RQRCode::QRCode.new('http://github.com')
        result = ''

        qr.qrcode.modules.each do |row|
          row.each do |col|
            result << (col ? 'X' : 'O')
          end

          result << "\n"
        end

        puts result
      end

      def self.description
        "Amazing plugin"
      end

      def self.authors
        ["Jeroen de Vrind"]
      end

      def self.return_value
        # If your method provides a return value, you can describe here what it does
      end

      def self.details
        # Optional:
        "Amazing plugin"
      end

      def self.available_options
        [
          # FastlaneCore::ConfigItem.new(key: :your_option,
          #                         env_name: "JEROEN_YOUR_OPTION",
          #                      description: "A description of your option",
          #                         optional: false,
          #                             type: String)
        ]
      end

      def self.is_supported?(platform)
        # Adjust this if your plugin only works for a particular platform (iOS vs. Android, for example)
        # See: https://docs.fastlane.tools/advanced/#control-configuration-by-lane-and-by-platform
        #
        # [:ios, :mac, :android].include?(platform)
        true
      end
    end
  end
end
