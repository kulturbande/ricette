SimpleNavigation::Configuration.run do |navigation|
  navigation.items do |primary|
    primary.item :projects, 'Projects', projects_path
  end

  navigation.selected_class = "active"
end