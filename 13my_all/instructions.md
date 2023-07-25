# My All?

The objective is to build the method `my_all?` that mimics the functionality of
the `all?` method.

You can find the all? documentation
[here](https://ruby-doc.org/core-2.7.4/Enumerable.html#method-i-all-3F) and
[here](https://rubyapi.org/3.0/o/array#method-i-all-3F)

About all? method:

> Passes each element of the collection to the given block. The method returns
> true if the block never returns false or nil

For example:

```ruby
numbers = [1, 2, 3, 4]
numbers.all? { |number| number.is_a?(Integer) }# => true
numbers.all? { |number| number < 4 }# => false

```

So, your `my_all?` method should behave in a similar way:

```ruby
numbers = [1, 2, 3, 4]
my_all?(numbers) { |number| number.is_a?(Integer) }# => true
my_all?(numbers) { |number| number < 4 }# => false

```

The only difference is that, while the method `all?` is called directly over
numbers (`numbers.all?`), your method `my_all?` expects an array as one of its
parameters (`my_all?(numbers)`)

After that, both receive a block of code and do exactly the same.

If no block is passed to the method, it should return true when none of the
collection members are false or nil, otherwise return false.
