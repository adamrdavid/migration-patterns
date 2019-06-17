# frozen_string_literal: true

module MigrationPatterns
  module DatabaseHelpers
    def self.adapter_name
      config.adapter
    end

    def self.postgresql?
      adapter_name.casecmp('postgresql').zero?
    end

    def self.mysql?
      adapter_name.casecmp('mysql2').zero?
    end

    def self.true_value
      if postgresql?
        "'t'"
      else
        1
      end
    end

    def self.false_value
      if postgresql?
        "'f'"
      else
        0
      end
    end

    def self.username
      config.username || ENV['USER']
    end

    def self.database_name
      config.database
    end

    def self.config
      MigrationPatterns.configuration
    end
  end
end
