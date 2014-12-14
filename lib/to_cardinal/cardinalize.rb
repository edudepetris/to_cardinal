module ToCardinal
  def self.cardinalize(str)
    case str.downcase
    when 'first', '1st'
      1
    when 'second', '2nd'
      2
    when 'third', '3rd'
      3
    when 'fourth', '4th'
      4
    when 'fifth', '5th'
      5
    when 'sixth', '6th'
      6
    when 'seventh', '7th'
      7
    when 'eighth', '8th'
      8
    when 'ninth', '9th'
      9
    when 'tenth', '10th'
      10
    when 'eleventh', '11th'
      11
    when 'twelfth', '12th'
      12
    when 'thirteenth', '13th'
      13
    when 'fourteenth', '14th'
      14
    when 'fifteenth', '15th'
      15
    when 'sixteenth', '16th'
      16
    when 'seventeenth', '17th'
      17
    when 'eighteenth', '18th'
      18
    when 'nineteenth', '19th'
      19
    when 'twentieth', '20th'
      20
    when 'thirtieth', '30th'
      30
    when 'fortieth', '40th'
      40
    when 'fiftieth', '50th'
      50
    when 'sixtieth', '60th'
      60
    when 'seventieth', '70th'
      70
    when 'eightieth', '80th'
        80
    when 'ninetieth', '90th'
      90
    when 'hundredth', '100th'
      100
    else
      -1
    end
  end

  def to_cardinal
    ToCardinal.cardinalize self
  end
end
