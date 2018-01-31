module ServicesHelper
  def service_choose_new_or_edit
    if action_name == 'new' || action_name == 'confirm'
      confirm_services_path
    elsif action_name == 'edit'
      service_path
    end
  end
end

