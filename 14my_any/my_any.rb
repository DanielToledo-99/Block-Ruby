def my_any?(array, &block)
  return array.to_enum unless block_given?

  result = []

  array.each do |element|
    result.push(element) if yield(element)
  end

  result
end