def my_all?(array, &block)
  array.each do |element|
    result = block_given? ? block.call(element) : element
    return false unless result
  end

  true
end