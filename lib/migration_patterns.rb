# frozen_string_literal: true

# The 'guts' of the VRT library. Probably in need of refactoring in future.
# Will do file I/O the first time it's accessed, and will thereafter hold
# VRT versions in-memory.

require 'migration_patterns/database'
require 'migration_patterns/postgres'
require 'migration_patterns/mysql'
require 'migration_patterns/errors'

require 'date'
require 'json'
require 'pathname'

module VRT
  module_function
end
