module GrubbUtils
  def slugify string
    string.downcase
        .gsub(/[^a-z0-9 ]/, '')
        .strip.gsub(/ /, '-')
  end
end