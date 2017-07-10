# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  if name_hash.size == 0
    return nil
  end

  returnKey = ""
  returnVal = 0

  name_hash.each do |key, value|
    if returnKey == ""
      returnKey = key
      returnVal = value
    end
    if returnVal > value
      returnKey = key
      returnVal = value
    end
  end
  return returnKey
end
