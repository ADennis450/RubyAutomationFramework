class HomePage
  attr_accessor :page_name, :url
  # region meta data
  define_method(:page_name) {'home'}
  define_method(:url) {'https://lightwellinc.com/'}
  # endregion
  # region elements
  define_method(:find_out_how_button) {'//section[1]/descendant::span[text()="Find Out How"]'}
  # endregion

end