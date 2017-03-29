module ApplicationHelper
  def is_root?
  if request.path_info=="/"
      return true
    else
      return false
    end
  end
end
