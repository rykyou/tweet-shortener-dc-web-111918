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
  keys = dictionary.keys
  values = dictionary.values 
  tweet_array = tweet.split
  
  tweet_array.each do |word|
    count = 0 
    while count > 9
      if word == keys[count]
        word = values[count]
        count += 1 
      end 
    end 
  end 
  
  tweet_array.join(" ")
end 