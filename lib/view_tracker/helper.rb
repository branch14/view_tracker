module ViewTracker
  module Helper

    def view_name
      [controller_name, action_name] * '/'
    end

    def main_template
      # rails 2.3.2
      # view_context.instance_variable_get(:@_first_render).path
      controller = controller_name
      action = @render_options[:partial]
      action = action.first[:action] if action.is_a?(Array) and action.first.is_a?(Hash)
      action = action_name unless action.is_a?(String)
      [controller, action] * '/'
    end

    def display_main_template
      main_template.tap do |tmpl|
        tmpl += " (#{view_name})" unless main_template == view_name
      end
    end

  end
end
