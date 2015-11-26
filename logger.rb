require 'singleton'

class Logger
  include Singleton

  def initialize
    @f = File.open 'log.txt', 'a'
  end

  # instance method
  def log_something what
    @f.puts what
    @f.flush # save on hard drive all changes
  end  
end