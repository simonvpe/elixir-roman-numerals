defmodule RomanNumeral do

  @numerals [
    {1000,"M"},
    {900,"CM"},
    {500,"D"},
    {400,"CD"},
    {100,"C"},
    {90,"XC"},
    {50,"L"},
    {40,"XL"},
    {10,"X"},
    {9,"IX"},
    {5,"V"},
    {4,"IV"},
    {1,"I"}]

  def converts(number) do
    converts(number, @numerals)
  end
  
  def converts(number, _) when number < 1 do
    ""
  end

  def converts(number, [{arabic, roman} | tail]) when number >= arabic do
    roman <> converts(number - arabic, [{arabic, roman} | tail])
  end

  def converts(number, [_ | tail]) do
    converts(number, tail)
  end
end
