# frozen_string_literal: true

module MigrationPatterns
  class Configuration
    attr_accessor :adapter, :database, :username

    private

    def initialize
      @adapter = 'postgresql'
      @database = 'db_name'
      @username = 'postgres'
    end
  end
end
