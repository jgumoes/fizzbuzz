NumDict = { 3 => "fizz", 5 => "buzz"}#, 7 => "slam"}

def fizzbuzz number
  #if number == 15 then return "fuzzbuzz" end
  val = ""
  NumDict.keys.each { |k| if number % k == 0 then val += NumDict[k] end}
  if val == "" then val = number end
  return val
end