class DataHelper
  def self.convert_name_to_element(name)
    name.downcase.gsub(" ", "_")
  end

  def self.convert_name_to_page_object(name)
    if name.include? ' '
      word_list = []
      name.split(' ').each do |word|
        word_list.push(word.capitalize)
      end
      return word_list.join + 'Page'
    else
      return name.capitalize + 'Page'
    end
    end
end