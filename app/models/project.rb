class Project < ActiveRecord::Base
  has_many :user_stories
  has_many :tasks, :through => :user_stories

  validates :title, :presence => true
  validates :title, :uniqueness => true

end
