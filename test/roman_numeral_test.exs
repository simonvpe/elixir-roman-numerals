defmodule RomanNumeralTest do
  use ExUnit.Case

  test "converts arabaic into roman numeral" do
    test_values = [
      {0,""},
      {1,"I"},
      {2,"II"},
      {3,"III"},
      {4,"IV"},
      {5,"V"},
      {6,"VI"},
      {7,"VII"},
      {8,"VIII"},
      {9,"IX"},
      {10,"X"},
      {17,"XVII"},
      {22,"XXII"},
      {44,"XLIV"},
      {53,"LIII"},
      {96,"XCVI"},
      {117,"CXVII"},
      {444,"CDXLIV"},
      {611,"DCXI"},
      {1997,"MCMXCVII"},
      {2017,"MMXVII"}
    ]
    Enum.each test_values, fn({arabic,roman}) ->
      assert RomanNumeral.converts(arabic) == roman
    end
  end
  
end
