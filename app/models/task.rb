class Task < ActiveRecord::Base
  attr_accessible :date, :description, :done
end
