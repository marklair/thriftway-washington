module ApplicationHelper
  
  def current_navigation_tab uri
    if uri == '/boards'
      tab = 'home'
    elsif uri == '/boards/new'
      tab = 'new'
    else
      tab = 'list'
    end
    tab
  end
  
end
