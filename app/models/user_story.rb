class UserStory < ActiveRecord::Base
  has_one :project
  has_many :tasks

  validates_inclusion_of :backlog, :in => %w( current product ), :message => "Only 'current' or 'product' are allowed"
  validates_presence_of :story
  validates_presence_of :project_id

  scope :product_backlog, where(:backlog => "product")
  scope :current_backlog, where(:backlog => "current")

end
