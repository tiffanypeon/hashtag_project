require 'spec_helper'

describe TweetSearcher do
  it "receives a search query and triggers a new twitter search" do 
    search = Search.create(:original_string => "TBT  ")
    tweet_search = TweetSearcher.new
    tweet_search.load_tweets(search.normalized_string)

    expect(tweet_search.tweets).to eq (Twitter.search("#tbt").results)
  end

end
