class Logger
  def initialize
        @f = File.open 'log.txt', 'a'
  end

  @@x = nil 
  
  def self.instance
    if @@x == nil
      @@x = Logger.new
    end

    return @@x
  end

  # class method
  def self.say_something
    puts "haha"
  end

  # instance method
  def log_something what
    @f.puts what
  end
end
 
Logger.say_something
Logger.instance.log_something "from singleton"
