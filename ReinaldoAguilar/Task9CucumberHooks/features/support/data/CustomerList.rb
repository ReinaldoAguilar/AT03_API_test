require 'singleton'
class Customer
  include Singleton
  attr_accessor :hash_client
  attr_accessor :hash_clientID
  def initialize
    @hash_client ={'123456':"luis",'231':"Maria",'1234':"juana",'12345':"carmen"}
    @hash_clientID ={'123456':"200",'231':"1000",'1234':"100",'12345':"300"}
  end
  def method_seach_name(name)
     @hash_client.has_value?(name)
  end
  def method_id(id)
    @hash_clientID.has_key?(id)
  end
  def method_money(id)
     @hash_clientID[id.to_sym]
  end
end

