class Hash_practice_five
  attr_reader :hash_item
  def create_the_haah
    puts "Enter the size hash?"
    size_value = gets.to_i

    @hash_item ={}

    size_value.times do |item|
      puts "Enter the values"
      value = gets.chomp
      @hash_item.store item, value
    end
  end
  def method_hash_key

    hash_item.each_key {|key| puts key}
  end

  def method_hash_value

    hash_item.each_value {|value| puts value}
  end

  def method_print_hash

    p hash_item
  end
  def method_content_key
    puts "Enter key"
    key_find = gets.to_i
   puts hash_item.has_key?(key_find)
  end

  def method_content_value
    puts "Enter value"
    key_find = gets.chomp
    puts hash_item.has_value?(key_find)
  end
  def method_hash
    create_the_haah
    method_hash_key
    method_hash_value
    method_print_hash
    method_content_key
    method_content_value
  end

end

hash_class = Hash_practice_five.new
hash_class.method_hash