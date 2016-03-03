module ApplicationHelper
end

def cp(path)
  "current" if current_page?(path)
end