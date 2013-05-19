# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Event.create(:event_type => "alarm", :trigger => DateTime.now, :end =>(DateTime.now+5), :description => "Heart rate above max threshold", :action_taken => "Called contact 1 and 2", :status => "Resolved, no further action needed")

Contact.create(:name => "Toms Mom", :email =>"toms.mom@gmail.com", :phone => "4162192452", :relationship => "Mother")

Contact.create(:name => "Toms Dad", :email =>"toms.dad@gmail.com", :phone => "4162192452", :relationship => "Father")

User.create(:name => "Tom", :gender => "male", :age => 30, :height => 170, :diabetes => false, :tobacco => false, :physical_activity => 8, :weight => 75, :image => "http://metronewsca.files.wordpress.com/2013/01/fordinset.jpg?w=618&h=408&crop=1")
