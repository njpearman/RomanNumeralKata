module RomanNumeralsKata
  X, IX, V, IV, I = 'X', 'IX', 'V', 'IV', 'I'

  def self.convert value
    get_units(mod_10(value), add_numeral(value / 10, X))
  end

  def self.mod_10 value
    value > 0 ? value % 10 : 0
  end
  
  def self.get_units value, total=''
    return total+X if value > 9
    return total+IX if value > 8
    return add_numeral(remainder_of(value), I, total+V) if value > 5
    return total+V if value > 4
    return total+IV if value > 3
    add_numeral(value, I, total)
  end

  def self.remainder_of integer
    mod = (integer-5) % 3
    mod < 1 ? 3 : mod
  end

  def self.add_numeral integer, numeral, current_total=''
    return add_numeral(integer-1, numeral, current_total+numeral) if integer > 0
    return current_total
  end
end
