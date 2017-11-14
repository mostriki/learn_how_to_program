class Lesson < ActiveRecord::Base
  belongs_to :section
  validates :title, :content, :presence => true
end
