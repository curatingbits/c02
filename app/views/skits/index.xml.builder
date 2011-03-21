xml.instruct!
xml.posts do
  @skits.each do |post|
    xml.post do
      xml.title post.title
      xml.description post.description
    end
    end
  end
