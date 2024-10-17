defmodule Lists do
  def len([]), do: 0
  def len([_|t]), do: 1 + len(t)

  def sum([]), do: 0
  def sum([h|t]), do: h + sum(t)

  def sum_pairs([]), do: 0
  def sum_pairs([h1, h2 | t]), do: [h1+h2 | sum_pairs(t)]

  def even_length?([]), do: true
  def even_length?([_,t]), do: odd_length?(t)

  def odd_length?([]), do: false
  def odd_length?([_,t]), do: even_length?(t)

  def square([]), do: []
  def square([h|t]), do: [h**2 | square(t)]

  def double([]), do: []
  def double([h|t]), do: [h*2 | square(t)]

  def map([], _), do: []
  def map([h|t], func), do: [func.(h) | map(t, func)]
end
