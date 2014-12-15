module ToCardinal
  EXPLICITS = {
    'first'         => 1,
    'second'        => 2,
    'third'         => 3,
    'ninth'         => 9,
    'eleventh'      => 11,
    'twelfth'       => 12,
    'twentieth'     => 20,
    'thirtieth'     => 30,
    'fortieth'      => 40,
    'fiftieth'      => 50,
    'sixtieth'      => 60,
    'seventieth'    => 70,
    'eightieth'     => 80,
    'ninetieth'     => 90,
    'one hundredth' => 100
  }

  REGULARS = {
    'thir'  => 3,
    'four'  => 4,
    'fif'   => 5,
    'six'   => 6,
    'seven' => 7,
    'eigh'  => 8,
    'nine'  => 9,
    'ten'   => 10
  }

  TENS = {
    'twenty'  => 20,
    'thirty'  => 30,
    'forty'   => 40,
    'fifty'   => 50,
    'sixty'   => 60,
    'seventy' => 70,
    'eighty'  => 80,
    'ninety'  => 90
  }

  EXPLICIT_MATCHES = Hash[REGULARS.map {|k, v| [k.to_s + 'th', v] }].merge EXPLICITS
  TENS_MATCH       = /(#{TENS.keys.join '|'})-/
  ORDINAL          = /^(\d+)(?:st|nd|rd|th)$/

  def self.cardinalize(str)
    str.downcase!

    ordinal          = str[ORDINAL, 1]
    explicit_matches = EXPLICIT_MATCHES[str]
    regular_match    = str[/^(.+)teenth$/, 1]

    return ordinal.to_i if ordinal
    return explicit_matches if explicit_matches
    return 10 + REGULARS[regular_match] if regular_match

    if tens = str[TENS_MATCH, 1]
      sum = TENS[tens]
      str.sub! "#{tens}-", ''
      EXPLICIT_MATCHES.has_key?(str) ? sum + EXPLICIT_MATCHES[str] : nil
    end
  end

  def to_cardinal
    ToCardinal.cardinalize self
  end
end
