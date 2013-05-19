# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Angelhackapp::Application.initialize!

require "serialport"

#params for serial port
port_str = "/dev/tty.FireFly-CB97-RNI-SPP"  #may be different for you
baud_rate = 9600
data_bits = 8
stop_bits = 1
parity = SerialPort::NONE 

# sp = SerialPort.new(port_str, baud_rate, data_bits, stop_bits, parity)

# counter = 0

# while true do
#   while (i = sp.gets.chomp) do       # see note 2
#      puts i
#     # puts $redis
# 		counter+=1
	

#    if i[0] == "B" and counter == 10
#    		Reading.create(:time => DateTime.now, :BPM => ((i[1..3]).to_i)/2, :IBI => 0)
#    		counter = 0
#  			else
#    		ReadingIbi.create(:time => DateTime.now, :ibi => ((i[1..3]).to_i)/2)
#    	end
   
#    end
# end

# sp.close                       #see note 1