module ApplicationHelper
  def attr_message(object, attribute)
    object&.errors&.full_messages_for(attribute)&.first
  end

  def active_drawer_path?(controller)
    request.params.has_key?(:controller) && request.params[:controller].include?(controller)
  end

  def set_active_drawer_item_class(value)
    value ? "active" : "link-dark"
  end
end
