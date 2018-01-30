module CategoriesHelper
  def category_choose_new_or_edit
    if action_name == 'new' || action_name == 'confirm'
      confirm_categories_path
    elsif action_name == 'edit'
      category_path
    end
  end
end

