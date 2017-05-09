module ApplicationHelper
  def is_root?
  if request.path_info=="/"
      return true
    else
      return false
    end
  end

  def neets_controller?
    controller.controller_name == 'neets'
  end
end
