class UserStory < ActiveRecord::Base
  belongs_to :project
  has_many :tasks

  validates_inclusion_of :backlog, :in => %w( sprint product ), :message => "Only 'sprint' or 'product' are allowed"
  validates_presence_of :story
  validates_presence_of :project_id

  scope :product_backlog, where(:backlog => "product").order(:position)
  scope :sprint_backlog, where(:backlog => "sprint").order(:position)

end
