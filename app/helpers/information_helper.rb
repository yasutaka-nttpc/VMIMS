module InformationHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'confirm'
      confirm_information_index_path
    elsif action_name == 'edit'
      information_path
    end
  end
end
