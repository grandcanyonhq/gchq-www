require "base64"
require "uri"

# TODO: good idea but needs work

module Jekyll
  class RenderTimeTag < Liquid::Tag

    def initialize(tag_name, text, tokens)
      super
      @email = text.split[0]
      @class = text.split[1..]
    end

    def render(context)
      base64Mail = Base64.strict_encode64(Addressable::URI.encode(@email))

      # See http://techblog.tilllate.com/2008/07/20/ten-methods-to-obfuscate-e-mail-addresses-compared/
      output = "<a href=\"mailto:\" "
      output += "data-contact=\"#{base64Mail}\" class=\"#{@class.join(" ")}\" target=\"_blank\" "
      output += "onfocus=\"this.href = 'mailto:' + atob(this.dataset.contact)\">"
      output += "<script type=\"text/javascript\">document.write(atob(\"#{base64Mail}\"));</script></a>"
      return output
    end
  end
end

Liquid::Template.register_tag('render_email', Jekyll::RenderTimeTag)