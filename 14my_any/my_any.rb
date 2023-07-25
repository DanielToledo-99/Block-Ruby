def my_any?(array, &block)
  array.each do |element|
    result = block_given? ? block.call(element) : element
    return true if result
  end

  false
end