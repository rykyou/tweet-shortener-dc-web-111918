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
  dictionary.each do |key, value|
   tweet_array = tweet.split
   tweet_array.map do |word|
     if word == key
       word = value
     else 
       word 
     end 
   end 

  tweet_array.join(' ')
  end
end 