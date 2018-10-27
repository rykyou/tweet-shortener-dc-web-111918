def dictionary
    {"hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "four"=> '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@", 
    "and" => "&"}
end 

def word_substituter(tweet)
  tweet_array = tweet.split(' ')
  tweet_array.map do |word|
    if dictionary[word] #check if the dictionary contains the word as a key
      dictionary[word] #return the value of dictionary[word] if it exists
    else
      word #if it does not exist, then just return the word
  	end
  end.join(' ') #map returns a new array but does not modify the original array. So chain.join onto the *return value* of .map after the end
end