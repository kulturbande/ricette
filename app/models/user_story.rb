class UserStory < ActiveRecord::Base
  has_one :project

  validates_inclusion_of :backlog, :in => %w( sprint product ), :message => "Only 'sprint' or 'product' are allowed"
  validates_presence_of :story

  scope :product_backlog, where(:backlog => "product").order(:position)
  scope :current_backlog, where(:backlog => "sprint").order(:position)

end
