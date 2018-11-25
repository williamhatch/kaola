
def insert_into_file(destination, replacement, anchor, after)
  #regexp = Regexp.new(Regexp.escape(anchor))
  regexp = Regexp.new(anchor)
  if after
    string = '\0' + replacement
  else
    string = replacement + '\0'
  end
  content = File.binread(destination)
  content.gsub!(regexp, string)
  # if destination.match(/user/) and content.match(/:cool/)
  #   p "------"
  #   p content
  #   p regexp
  #   p anchor
  #   p content.match anchor
  #   p content.match regexp
  #   p content.match /belongs_to :cool/
  #   p string
  # end
  File.open(destination, "wb") { |file| file.write(content); file.flush }
end
