SimpleNavigation::Configuration.run do |navigation|
  navigation.items do |primary|
    primary.item :projects, 'Projects', projects_path
    primary.item :user_stories, 'User Stories', project_user_stories_path(@project) if @project
    primary.item :tasks, 'Tasks', project_tasks_path(@project) if @project
  end

  navigation.selected_class = "active"
end