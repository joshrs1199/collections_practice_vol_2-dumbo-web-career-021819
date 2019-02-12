def begins_with_r(tools)
  tools.all? {|x| x.start_with? "r"}
end

def contain_a(elements)
  elements.select {|x| x.include? "a"}
end

def first_wa(elements)
  elements.find {|x| x[0...2] == "wa"}
end

def remove_non_strings(elements)
  elements.reject {|x| !x.is_a?(String)}
end

def count_elements(array)
  array.group_by(&:itself).map do |k,v|
     k.merge({:count => v.length})
  end
end

def merge_data(keys, data)
    keys.each { |names|
        data.each { |dta|
            names.merge!(dta[names[:first_name]])
        }
    }
end

def find_cool(hashes)
    hashes.select { |el| el.has_value?("cool")}
end

def organize_schools(schools)
    organized = {}
    schools.each { |school, lochash|
        lochash.each { |sym, location|
            if organized[location]
                organized[location] << school
            else
                organized[location] = []
                organized[location] << school
            end
        }
    }
    organized
end
