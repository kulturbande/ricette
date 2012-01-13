class Task < ActiveRecord::Base
  belongs_to :user_story
  belongs_to :project

  validates_presence_of :task
  validates_presence_of :user_story_id
  validates_inclusion_of :status, :in => %w( to_do in_progress done ), :message => "Only 'to_do', 'in_progress' or 'done' are allowed"

  def next
    if self.status == 'to_do'
      self.status = 'in_progress'
    elsif self.status == 'in_progress'
      self.status = 'done'
    else
      return false
    end
    true
  end
end
