# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Angelhackapp::Application.initialize!

require "serialport"

#params for serial port
port_str = "/dev/rfcomm0"  #may be different for you
baud_rate = 115200
data_bits = 8
stop_bits = 1
parity = SerialPort::NONE 

# sp = SerialPort.new(port_str, baud_rate, data_bits, stop_bits, parity)

# counter = 0

# while true do
#   while (i = sp.gets.chomp) do
#     puts i
		
#     counter+=1
	 
#     age = User.age
    
#     factor = 2

#     if i[0] == "B" and counter == 10
#       Reading.create(:time => DateTime.now, :BPM => ((i[1..3]).to_i)/factor, :IBI => 0)
#       counter = 0
      
#       if (((i[1..3]).to_i)/factor) > (190 + age)
#         Event.create(:event_type => "high BPM alert", :trigger => DateTime.now, :end => DateTime.now + 1) 
#       elsif (((i[1..3]).to_i)/factor) > (80 - age)
#         Event.create(:event_type => "high BPM alert", :trigger => DateTime.now, :end => DateTime.now + 1)
#       end
#     else
#    		ReadingIbi.create(:time => DateTime.now, :ibi => ((i[1..3]).to_i)/factor)
#     end
   
#   end
# end

# sp.close                       #see note 1