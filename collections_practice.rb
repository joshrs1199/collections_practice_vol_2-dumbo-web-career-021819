def begins_with_r(tools)
  tools.all? {|x| x.start_with? "r"}
end

def contain_a(elements)
  elements.select {|x| x.include? "a"}
end

def first_wa(elements)
  elements.find {|x| x.start_with? "wa"}
end
