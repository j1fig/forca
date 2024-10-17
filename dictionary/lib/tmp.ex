defmodule Tmp do
  def swap({a, b}), do: {b, a}
  def cmp(a, a), do: true
  def cmp(_, _), do: false
end
