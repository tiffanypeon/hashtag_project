class Search < ActiveRecord::Base
  belongs_to :answer_id

  def before_save
    self.normalized_string = self.original_string.downcase.strip
  end

  

end
