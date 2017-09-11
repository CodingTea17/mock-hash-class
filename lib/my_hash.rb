class MyHash
  attr_reader(:my_hashes)
  def initialize()
    @my_hashes = []
  end

  def myStore(key, value)
    @my_hashes.push([key,value])
  end

  def myFetch(key)
    @my_hashes.each do |sub_hash|
      if sub_hash[0] == key
        return sub_hash[1]
      end
    end
  end

  def has_key?(key)
    @my_hashes.each do |sub_hash|
      return sub_hash[0] == key
    end
  end

  def has_value?(value)
    @my_hashes.each do |sub_hash|
      return sub_hash[1] == value
    end
  end

  def length()
    @my_hashes.length
  end

  def merge(sub_hash)
    @my_hashes + sub_hash.my_hashes
  end
end
