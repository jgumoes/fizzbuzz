require 'fizzbuzz'

describe 'fizzbuzz' do 

  it 'return "fizzbuzzslam" when passed 105' do
    expect(fizzbuzz(105)).to include("fizz")
  end

  it 'return contains "fizz" when passed multiple of 3' do
    
    (1..20).each do |n|
      expect(fizzbuzz(n*3)).to include("fizz")
    end
  end

  it 'return contains "buzz" when passed multiple of 5' do
    max = 100/5
    (1..max).each do |n|
      expect(fizzbuzz(n*5)).to include("buzz")
    end
  end

  it 'return contains "fizzbuzz" when passed multiple of 15' do
    
    (1..20).each do |n|
      expect(fizzbuzz(n*15)).to include("fizzbuzz")
    end
  end

  it 'return integer when no multiple of 3 or 5' do
    nums = []
    while nums.length < 20
      x = rand(100)
      if (x % 5 != 0) && (x % 3 != 0) then nums.append(x) end
    end
    nums.each do |n|
      expect(fizzbuzz(n)).to eq n
    end
  end

end