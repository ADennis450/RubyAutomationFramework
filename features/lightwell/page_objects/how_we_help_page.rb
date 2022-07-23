class HowWeHelpPage
attr_accessor :page_name, :url
# region meta data
define_method(:page_name) {'how we help'}
define_method(:url) {'https://lightwellinc.com/how-we-help/'}
# endregion
# region elements
define_method(:how_we_help_header){'//h5[text()="How We Help"]'}
# endregion

end