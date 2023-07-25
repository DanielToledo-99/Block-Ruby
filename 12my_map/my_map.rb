def my_map(array, &block)
  return array.to_enum unless block_given?

  result = []

  array.each do |element|
    result << block.call(element)
  end

  result
end 