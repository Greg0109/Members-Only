# rubocop:disable Layout/EndOfLine

# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'

run Rails.application
Rails.application.load_server

# rubocop:enable Layout/EndOfLine
