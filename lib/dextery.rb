require 'dextery/generator'
require 'logger'

module Dextery
  VERSION = "0.0.1"

  def self.logger
    Logger.new(STDOUT)
  end
end
