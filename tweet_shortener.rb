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
  tweet_array = tweet.split
  tweet_array.map do |word|
  if dictionary[word]
    dictionary[word] #tell it to change element to the value of the key in dictionary, if it matches a key of dictionary
  else
    word #tell it to just keep the word the same if it is not in dictionary
  end
end#after the end, it will return a new array with some elements changed to the values of dictionary

  dictionary.each do |key, value|
    count = 0 
    tweet_array.each do |word|
      if word == keys[count]
        word = values[count]
        count += 1 
      end
    end 
  end
  
 
  
  tweet_array.join(" ")
end 