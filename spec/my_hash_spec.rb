require('my_hash')


RSpec.describe('MyHash#myFetch') do
  it('retrieves a stored value by its key') do
    test_hash = MyHash.new()
    test_hash.myStore("pb", "jelly")
    expect(test_hash.myFetch("pb")).to eq("jelly")
  end
end

RSpec.describe('MyHash#has_key?') do
  it('searches for a matching key and returns true when it finds it') do
    test_hash = MyHash.new()
    test_hash.myStore("pb", "jelly")
    expect(test_hash.has_key?("pb")).to eq(true)
  end
  it('searches for a matching key and returns false when it doesn\'t finds it') do
    test_hash = MyHash.new()
    test_hash.myStore("pb", "jelly")
    expect(test_hash.has_key?("curry")).to eq(false)
  end
end

RSpec.describe('MyHash#has_value?') do
  it('searches for a matching key and returns true when it finds it') do
    test_hash = MyHash.new()
    test_hash.myStore("pb", "jelly")
    expect(test_hash.has_value?("jelly")).to eq(true)
  end
  it('searches for a matching key and returns false when it doesn\'t finds it') do
    test_hash = MyHash.new()
    test_hash.myStore("pb", "jelly")
    expect(test_hash.has_value?("curry")).to eq(false)
  end
end

RSpec.describe('MyHash#length') do
  it('returns the nunmber of key-value pairs in the hash') do
    test_hash = MyHash.new()
    test_hash.myStore("pb", "jelly")
    expect(test_hash.length()).to eq(1)
  end
end

RSpec.describe('MyHash#merge') do
  it('return the value of merged hashes') do
    test_hash = MyHash.new()
    test_hash2 = MyHash.new()
    test_hash.myStore("pb", "jelly")
    test_hash2.myStore("cat", "meow")
    expect(test_hash.merge(test_hash2)).to eq([['pb','jelly'],['cat','meow']])
  end
end
