class Idea < ActiveRecord::Base
  validates :idea, presence: true, length: {maximum: 50, minimum: 3 } 
  validates :whatisit, presence: true, length: {maximum: 300, minimum: 3 } 
end
