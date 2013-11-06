class TweetSearcher
  
  attr_accessor :tweets

  def index
    @tweets = Tweet.load_tweets
  end

  def load_tweets(normalized_string)
    hashtag = search.normalized_string
    @tweets = Twitter.search(["#","#{hashtag}"," -rt"].join("")).results
  end

  def search 
    answer = Answer.create(:search_results => @tweets.map {|tweet| tweet.text if !tweet.nil})
    answer.save 
  end

end
