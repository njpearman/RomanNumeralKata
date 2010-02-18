require 'roman_numerals_kata'

describe RomanNumeralsKata do
  before(:each) do
    @method = lambda{|value| RomanNumeralKata.convert(value) }
  end
  
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

  it "should return XI, XII and XIII for 11, 12 and 13" do
    RomanNumeralsKata.convert(11).should == 'XI'
    RomanNumeralsKata.convert(12).should == 'XII'
    RomanNumeralsKata.convert(13).should == 'XIII'
  end

  it "should return XIV and XV for 14 and 15" do
    RomanNumeralsKata.convert(15).should == 'XV'
  end

  it "should return XVI, XVII, XVIII and XIX for 16, 17, 18 and 19" do
    RomanNumeralsKata.convert(16).should == 'XVI'
    RomanNumeralsKata.convert(17).should == 'XVII'
    RomanNumeralsKata.convert(18).should == 'XVIII'
    RomanNumeralsKata.convert(19).should == 'XIX'
  end

  it "should return twenties as XX*" do
    assert_tens(20, 'XX')
  end

  it "should return thirties as XXX*" do
    assert_tens(30, 'XXX')
  end

  it "should return forties as XL*" do
    assert_tens(40, 'XL')
  end

  it "should return fifties as L*" do
    assert_tens(50, 'L')
  end

  it "should return sixties as LX*" do
    assert_tens(60, 'LX')
  end

  it "should return seventies as LXX*" do
    assert_tens(70, 'LXX')
  end

  it "should return eighties as LXXX*" do
    assert_tens(80, 'LXXX')
  end

  it "should return nineties as XC" do
    assert_tens(90, 'XC')
  end

  it "should return 100 as C" do
    RomanNumeralsKata.convert(100).should == 'C'
  end

  it "should return 499 as CDXCIX" do
    RomanNumeralsKata.convert(499).should == 'CDXCIX'
  end

  it "should return the correct values for hundreds" do
    RomanNumeralsKata.convert(200).should == 'CC'
    RomanNumeralsKata.convert(300).should == 'CCC'
    RomanNumeralsKata.convert(400).should == 'CD'
    RomanNumeralsKata.convert(500).should == 'D'
    RomanNumeralsKata.convert(600).should == 'DC'
    RomanNumeralsKata.convert(700).should == 'DCC'
    RomanNumeralsKata.convert(800).should == 'DCCC'
    RomanNumeralsKata.convert(900).should == 'CM'
  end

  it "should return 1000 as M" do
    RomanNumeralsKata.convert(1000).should =='M'
  end

  def assert_tens value, numeral
    RomanNumeralsKata.convert(value).should == numeral
    RomanNumeralsKata.convert(value+1).should == "#{numeral}I"
    RomanNumeralsKata.convert(value+2).should == "#{numeral}II"
    RomanNumeralsKata.convert(value+3).should == "#{numeral}III"
    RomanNumeralsKata.convert(value+4).should == "#{numeral}IV"
    RomanNumeralsKata.convert(value+5).should == "#{numeral}V"
    RomanNumeralsKata.convert(value+6).should == "#{numeral}VI"
    RomanNumeralsKata.convert(value+7).should == "#{numeral}VII"
    RomanNumeralsKata.convert(value+8).should == "#{numeral}VIII"
    RomanNumeralsKata.convert(value+9).should == "#{numeral}IX"
  end
end

