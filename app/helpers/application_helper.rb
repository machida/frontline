module ApplicationHelper
  def nl2br(str)
    sanitize str.gsub(/\r\n|\r|\n/, "<br />"), tags: "br"
  end
end