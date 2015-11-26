require './logger'
 
Logger.instance.log_something "from singleton"

# The way to make global variable
# $logger = Logger.new
# $logger = nil