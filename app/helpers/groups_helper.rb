module GroupsHelper
  def group_choose_new_or_edit
    if action_name == 'new' || action_name == 'confirm'
      confirm_groups_path
    elsif action_name == 'edit'
      group_path
    end
  end
end

