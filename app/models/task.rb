class Task < ActiveRecord::Base
  belongs_to :user_story
  belongs_to :project

  validates_presence_of :task
  validates_presence_of :user_story_id
  validates_inclusion_of :status, :in => %w( to_do in_progress done ), :message => "Only 'to_do', 'in_progress' or 'done' are allowed"
end
