require 'roman_numerals_kata'

describe RomanNumeralsKata do
  it "should return I for 1" do
    RomanNumeralsKata.convert(1).should == 'I'
  end

  it "should return II for 2" do
    RomanNumeralsKata.convert(2).should == 'II'
  end

  it "should return III for 3" do
    RomanNumeralsKata.convert(3).should == 'III'
  end

  it "should return '' for negative number" do
    RomanNumeralsKata.convert(-1).should == ''
  end

  it "should return IV for 4" do
    RomanNumeralsKata.convert(4).should == 'IV'
  end

  it "should return V for 5" do
    RomanNumeralsKata.convert(5).should == 'V'
  end

  it "should return VI for 6" do
    RomanNumeralsKata.convert(6).should == 'VI'
  end

  it "should return VII for 7" do
    RomanNumeralsKata.convert(7).should == 'VII'
  end

  it "should return VIII for 8" do
    RomanNumeralsKata.convert(8).should == 'VIII'
  end

  it "should return IX for 9" do
    RomanNumeralsKata.convert(9).should == 'IX'
  end

  it "should return X for 10" do
    RomanNumeralsKata.convert(10).should == 'X'
  end

  it "should return XI for 11" do
    RomanNumeralsKata.convert(11).should == 'XI'
  end

  it "should return XII for 12" do
    RomanNumeralsKata.convert(12).should == 'XII'
  end

  it "should return XV for 15" do
    RomanNumeralsKata.convert(15).should == 'XV'
  end

  it "should return XIX for 19" do
    RomanNumeralsKata.convert(19).should == 'XIX'
  end

  it "should return XXXI for 31" do
    RomanNumeralsKata.convert(31).should == 'XXXI'
  end
end

