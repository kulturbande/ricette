class UserStory < ActiveRecord::Base
  has_one :project

  validates_inclusion_of :backlog, :in => %w( current product ), :message => "Only 'current' or 'product' are allowed"
  validates_presence_of :story
end
