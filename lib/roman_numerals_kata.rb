module RomanNumeralsKata
  M, D, C, L, X, V, I = 'M', 'D', 'C', 'L', 'X', 'V', 'I'

  def self.convert value
    hundreds = add_numerals(value/100, [C,D,M])
    tens = add_tens(mod_100(value), hundreds)
    add_units(mod_10(value), tens)
  end

  def self.mod_100 value
    value > 0 ? value % 100 : 0
  end

  def self.mod_10 value
    value > 0 ? value % 10 : 0
  end

  def self.add_numerals(value, numeral_set, total='')
    return total+numeral_set[2] if value > 9
    return total+numeral_set[0]+numeral_set[2] if value > 8
    return add_numeral(remainder_of(value), numeral_set[0], total+numeral_set[1]) if value > 5
    return total+numeral_set[1] if value > 4
    return total+numeral_set[0]+numeral_set[1] if value > 3
    add_numeral(value, numeral_set[0], total)
  end

  def self.add_tens value, total=''
    add_numerals(value/10, [X,L,C], total)
  end

  def self.add_units value, total=''
    add_numerals(mod_10(value), [I,V,X], total)
  end

  def self.remainder_of value
    mod = (value-5) % 3
    mod < 1 ? 3 : mod
  end

  def self.add_numeral integer, numeral, total=''
    return add_numeral(integer-1, numeral, total+numeral) if integer > 0
    return total
  end
end
