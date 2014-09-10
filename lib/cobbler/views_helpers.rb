module Cobbler::ViewsHelpers
  def icon(icon_name, content = nil)
    i = content_tag(:span, nil, class: "glyphicon glyphicon-#{icon_name.to_s.tr('_', '-')}")
    content ? i + content_tag(:span, ' ' + content) : i
  end

  def fa_icon(icon_name, content = nil, *optional_classes)
    optional_classes ||= %w|fw|
    css_class = ([:fa, :"fa-#{icon_name.to_s.tr('_', '-')}"] + optional_classes).join(' ')
    i = content_tag(:span, nil, class: css_class)
    content ? i + content_tag(:span, ' ' + content) : i
  end

  def caret() content_tag(:b, nil, class: :caret) end

  def new_resource_link_name(resource)
    resource_name = resource.kind_of?(ActiveRecord::Base) ?
      resource.model_name.human.pluralize : resource

    t('application.new_resource', resource_name: resource_name)
  end
end
