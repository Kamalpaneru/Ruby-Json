require 'json'

class User
  
  
  attr_accessor :email, :name, :permissions
  
  def initialize(*args)
    @email = args[0]
    @name = args[1]
    @permissions = User.permission
  end
  
  def self.permission
   file = File.read 'template.json'
   JSON.load(file, nil)
  end
  
  def save
    self_json = {email: @email, name: @name, permissions: @permissions}.to_json
    open('Json_File.json', 'a') do |file|
      file.puts self_json
    end
  end    
end
