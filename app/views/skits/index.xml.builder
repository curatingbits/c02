xml.instruct!
xml.skits do
  @skits.each do |skit|
    xml.skit do
      xml.title skit.title
      xml.description skit.description
    end
    end
  end
