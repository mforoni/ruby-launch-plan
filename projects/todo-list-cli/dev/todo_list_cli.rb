# frozen_string_literal: true

require_relative 'controller'

include Cli

Cli.run if $PROGRAM_NAME == __FILE__
