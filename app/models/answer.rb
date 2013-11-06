class Answer < ActiveRecord::Base
  has_many :searches

  def search=(search_results)
    search_results
  end

  def result
    if self.search.count > 0 
      true
    else
      false
    end
  end
end
