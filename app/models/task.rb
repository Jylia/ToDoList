class Task < ActiveRecord::Base
  attr_accessible :date, :description, :done, :id_user
  belongs_to :user
end
