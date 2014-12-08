require 'spec_helper'

describe ToCardinal do
  it 'does converts full ordinal number to cardinal like Integer' do
    expect('first'.to_cardinal).to eq(1)
  end
end
