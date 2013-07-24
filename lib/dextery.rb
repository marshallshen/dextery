require 'dextery/generator'
require 'logger'

module Dextery
  def self.logger
    Logger.new(STDOUT)
  end
end
