module ActionView
  module Helpers
    module FormHelper
      def text_area(object_name, method, options = {})
        html = InstanceTag.new(object_name, method, self, options.delete(:object)).to_text_area_tag(options)
        html.sub(/>\&#x000A;/, '>').html_safe
      end
    end

    module FormTagHelper
      def text_area_tag(name, content = nil, options = {})
        options = options.stringify_keys

        if size = options.delete("size")
          options["cols"], options["rows"] = size.split("x") if size.respond_to?(:split)
        end

        escape = options.key?("escape") ? options.delete("escape") : true
        content = ERB::Util.html_escape(content) if escape

        html = content_tag :textarea, content.to_s.html_safe, { "name" => name, "id" => sanitize_to_id(name) }.update(options)
        html.sub(/>\&#x000A;/, '>').html_safe
      end
    end
  end
end