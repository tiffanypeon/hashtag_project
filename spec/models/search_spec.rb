require 'spec_helper'

describe Search do 
  it "recieves and normalizes a string" do
    search = Search.create(:original_string => "MiLeYCyRUS   ")

    expect(search.normalized_string).to eq("mileycyrus")
  end
end