class Search < ActiveRecord::Base
  belongs_to :answer_id

  # def before_save
  #   self.normalize
  # end

  # def normalize
  #   self.normalized_string = self.original_string.downcase.strip
  # end
  

end
