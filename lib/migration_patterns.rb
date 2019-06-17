# frozen_string_literal: true

require 'active_record'

require 'migration_patterns/configuration'

# require 'date'
# require 'json'
# require 'pathname'

module MigrationPatterns
  def self.configure
    @configuration = MigrationPatterns::Configuration.new

    yield configuration if block_given?

    configuration
  end

  def self.configuration
    @configuration || configure
  end

  require 'migration_patterns/sql/union'
  require 'migration_patterns/from_union'
  require 'migration_patterns/database_helpers'
  require 'migration_patterns/grant'
  require 'migration_patterns/migration_helpers'
end
