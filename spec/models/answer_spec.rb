require 'spec_helper'

describe Answer do
  it "returns true if a hashtag shows up in search" do
    search = Search.create(:original_string => "mileycyrus")
    answer = Answer.new

    expect(answer.result).to be(true)
  end

  it "returns false is a hashtag doesn't show up in search" do
    search = Search.create(:original_string => "xkjfeasd")
    answer = Answer.new

    expect(answer.result).to be(false)
  end
end
