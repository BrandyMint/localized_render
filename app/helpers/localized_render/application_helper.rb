module LocalizedRender
  module ApplicationHelper
    def localized_attribute(attr, locale)
      "#{attr}_#{locale.to_s.underscore}"
    end

    def localized_render(tab_name: nil, &block)
      tab_name = next_localized_tab_name
      # если доступен только 1 язык то не выводим табы
      if I18n.available_locales.count == 1
        yield(I18n.available_locales.first)
        return ''
      end

      buffer = ''

      buffer << localized_render_tabs(tab_name)
      buffer << localized_render_content(tab_name, block)
      buffer.html_safe
    end

    private

    def next_localized_tab_name
      @current_localized_tab_name ||= 0
      @current_localized_tab_name +=1
      'localized-tab-' + @current_localized_tab_name.to_s
    end

    def localized_render_tabs(tab_name)
      content_tag(:ul, class: 'nav nav-tabs') do
        I18n.available_locales.each_with_index do |locale, i|
          concat(content_tag(:li, class: ('active' if i.zero?)) do
            content_tag(:a, 'data-toggle': 'tab', href: "##{tab_name}-#{i}", 'aria-expanded': false) do
              t("locales.#{locale}")
            end
          end)
        end
      end
    end

    def localized_render_content(tab_name, block)
      content_tag(:div, class: 'tab-content') do
        I18n.available_locales.each_with_index do |locale, i|
          concat(content_tag(:div, class: "tab-pane #{('active' if i.zero?)}", id: "#{tab_name}-#{i}") do
            content_tag(:div, class: 'panel-body') do
              block.call(locale)
            end
          end)
        end
      end
    end
  end
end
