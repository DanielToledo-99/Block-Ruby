# My Select

The objective is to build a `my_select` method that mimics the functionality of
the `select` method.

You can find the select documentation
[here](https://ruby-doc.org/core-2.7.4/Enumerable.html#method-i-select) and
[here](https://rubyapi.org/2.7/o/enumerable#method-i-select)

About the select method:

> Returns an array containing all elements of enum (an array for example) for
> which the given block returns a true value.

For example:

```ruby
numbers = [1, 2, 3, 4, 5, 6]
numbers.select { |number| number.even? } # => [2, 4, 6]
numbers.select { |number| number.odd? } # => [1, 3, 5]

```

So, your method `my_select` should behave in a similar way:

```ruby
numbers = [1, 2, 3, 4, 5, 6]
my_select(numbers) { |number| number.even? } # => [2, 4, 6]
my_select(numbers)  { |number| number.odd? } # => [1, 3, 5]

```

The only difference is that, while the `select` method is called directly over
numbers (`numbers.select`), your method `my_select` expects an array as one of
its parameters (`my_select(numbers)`)

After that, both receive a block of code and do exactly the same.

If no block is passed to the method, it should return an Enumerator object.
Check the method `.to_enum` for more info.
