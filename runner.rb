require 'pp'
require_relative 'user'


user = User.new "kamalpaneru.15@gmail.com", "Kamal Paneru"

pp user

user.save
