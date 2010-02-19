module RomanNumeralsKata
  M, D, C, L, X, V, I = 'M', 'D', 'C', 'L', 'X', 'V', 'I'

  def self.convert value
    add_units(value, add_tens(value, add_hundreds(value, add_thousands(value))))
  end

  def self.add_thousands value
    add_numeral(value/1000, M)
  end
  
  def self.add_hundreds value, total=''
    add_numerals(mod_1000(value), [C,D,M], total)
  end

  def self.add_tens value, total=''
    add_numerals(mod_100(value), [X,L,C], total)
  end

  def self.add_units value, total=''
    add_numerals(mod_10(value), [I,V,X], total)
  end

  def self.add_numeral integer, numeral, total=''
    return add_numeral(integer-1, numeral, total+numeral) if integer > 0
    return total
  end

  def self.add_numerals(value, numeral_set, total='')
    return total+numeral_set[0]+numeral_set[2] if value > 8
    return add_numeral(remainder_of(value), numeral_set[0], total+numeral_set[1]) if value > 5
    return total+numeral_set[1] if value > 4
    return total+numeral_set[0]+numeral_set[1] if value > 3
    add_numeral(value, numeral_set[0], total)
  end

  def self.mod_1000 value
    positive_mod(1000, value)/100
  end

  def self.mod_100 value
    positive_mod(100, value)/10
  end

  def self.mod_10 value
    positive_mod 10, value
  end

  def self.positive_mod operator, value
    value > 0 ? value % operator : 0
  end

  def self.remainder_of value
    remainder_of_5(value) < 1 ? 3 : remainder_of_5(value)
  end

  def self.remainder_of_5 value
    (value-5) % 3
  end
end
