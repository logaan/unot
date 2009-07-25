class Nokogiri::XML::NodeSet
  def append new_content
    self.each{|n| n.inner_html = n.inner_html + new_content }
  end

  def content= new_content
    self.each{|n| n.content = new_content }
  end

  def prepend new_content
    self.each{|n| n.inner_html = new_content + n.inner_html }
  end
end

