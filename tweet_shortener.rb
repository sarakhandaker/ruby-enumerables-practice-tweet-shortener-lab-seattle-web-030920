# Write your code here.
def word_substituter (word)
    subs= {"hello" => "hi", 
            "to" => "2", 
            "two" => "2",
            "too" => "2",
            "for" => "4",
            "For" => "4",
            "four"=> "4",
            "be" => "b",
            "you" => "u",
            "at"  => "@", 
            "and"  => "&"}
    word= word.split(" ").map do |word|
        if subs[word]
            subs[word]
        else 
            word
        end
    end
    word.join(" ")
end

def bulk_tweet_shortener(array)
    array.each { |tweet|
    puts word_substituter(tweet)
    }
end

def selective_tweet_shortener(tweet)
    if tweet.length>140
        word_substituter(tweet)
    else
        tweet
    end
end

def shortened_tweet_truncator (tweet)
    if tweet.length>140
    tweet[0..136] + "..."
    else 
        tweet
    end
end