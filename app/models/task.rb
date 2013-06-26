class Task < ActiveRecord::Base
  attr_accessible :date, :description, :done
  belongs_to :user
end
