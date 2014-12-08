require 'spec_helper'

describe ToCardinal do
  cardinals = [
    1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18,
    19, 20, 30, 40, 50, 60, 70, 80, 90, 100]

  full_ordinals = %w'
    first second third fourth fifth sixth seventh eighth ninth
    tenth eleventh twelfth thirteenth fourteenth fifteenth sixteenth
    seventeenth eighteenth nineteenth twentieth thirtieth fortieth fiftieth
    sixtieth seventieth eightieth ninetieth hundredth'

  abbreviation_ordinal = %w'
    1st 2nd 3rd 4th 5th 6th 7th 8th 9th 10th 11th 12th 13th 14th 15th
    16th 17th 18th 19th 20th 30th 40th 50th 60th 70th 80th 90th 100th'

  full_ordinals.each_with_index do |ordinal, index|
    cardinal = cardinals[index]

    it "converts full ordinal #{ordinal} to cardinal #{cardinal}" do
      expect(ordinal.to_cardinal).to eq cardinal
    end
  end

  abbreviation_ordinal.each_with_index do |ordinal, index|
    cardinal = cardinals[index]

    it "converts abbreviation ordinal #{ordinal} to cardinal #{cardinal}" do
      expect(ordinal.to_cardinal).to eq cardinal
    end
  end

  it 'converts by default to -1' do
    expect('anything'.to_cardinal).to eq -1
  end

end
