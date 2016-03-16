class Movie < ActiveRecord::Base
  # set validations and conditions
  before_save { self.title = self.title.capitalize }
  
end
