def dictionary
    {"hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "For" => '4',
    "four"=> '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@", 
    "and" => "&"}
end 

def word_substituter(tweet)
  tweet_array = tweet.split(' ')
  tweet_array.map do |word|
    if dictionary[word] 
      dictionary[word] 
    else
      word 
  	end
  end.join(' ')
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end 
end 

def selective_tweet_shortener(tweet)
  if tweet.length > 140 
    word_substituter(tweet)
  else
    tweet
  end 
end 