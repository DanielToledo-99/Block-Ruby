def my_find(array)
  return array.to_enum unless block_given?

  array.each do |element|
    return element if yield(element)
  end

  nil
end