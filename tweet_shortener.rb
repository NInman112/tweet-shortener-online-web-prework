# Write your code here.
def dictionary
  subs = {
    "hello" => "hi",
    "to" => "2", "too" => "2", "two" => "2",
    "for" => "4", "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  tweet.split.map do |subs|
  if dictionary.keys.include?(subs.downcase)
    subs = dictionary[subs]
  else
    subs
  end
end.join(" ")
end

def bulk_tweet_shortener(tweet)
  puts word_substituter(tweet)
end