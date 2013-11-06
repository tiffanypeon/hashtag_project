class AnswersController < ApplicationController

  def index
    @answers = true
    @tweets = ["whatever #miley", "some stuff #miley", "other things #miley"]
  end

end
