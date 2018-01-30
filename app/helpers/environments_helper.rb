module EnvironmentsHelper
  def environment_choose_new_or_edit
    if action_name == 'new' || action_name == 'confirm'
      confirm_environments_path
    elsif action_name == 'edit'
      environment_path
    end
  end
end

