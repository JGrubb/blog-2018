module PostHelper
  require 'kramdown'
  def to_markdown(text)
    Kramdown::Document.new(text).to_html
  end
end
