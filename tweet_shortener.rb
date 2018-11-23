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
  tweet.split.collect do |subs|
  if dictionary.keys.include?(subs.downcase)
    subs = dictionary(subs)
  else
    subs
  end
end.join(" ")
end