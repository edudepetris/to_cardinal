require 'spec_helper'

describe ToCardinal do
  Linguistics.use :en

  cardinals            = (1..100).to_a
  full_ordinals        = cardinals.map { |c| c.en.numwords.en.ordinal }
  abbreviation_ordinal = cardinals.map { |c| c.en.ordinal }

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

  it 'converts to nil when it is not an ordinal' do
    expect('anything'.to_cardinal).to be_nil
  end
end
