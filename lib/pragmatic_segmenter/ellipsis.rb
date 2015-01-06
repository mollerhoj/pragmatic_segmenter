# -*- encoding : utf-8 -*-

module PragmaticSegmenter
  # This class searches for ellipses within a string and
  # replaces the periods.
  module Ellipsis
    # Rubular: http://rubular.com/r/i60hCK81fz
    ThreeConsecutiveRule = Rule.new(/\.\.\.(?=\s+[A-Z])/, '☏.')

    # Rubular: http://rubular.com/r/Hdqpd90owl
    FourConsecutiveRule = Rule.new(/(?<=\S)\.{3}(?=\.\s[A-Z])/, 'ƪ')

    # Rubular: http://rubular.com/r/YBG1dIHTRu
    ThreeSpaceRule = Rule.new(/(\s\.){3}\s/, '♟')

    # Rubular: http://rubular.com/r/2VvZ8wRbd8
    FourSpaceRule = Rule.new(/(?<=[a-z])(\.\s){3}\.(\z|$|\n)/, '♝')

    OtherThreePeriodRule = Rule.new(/\.\.\./, 'ƪ')

    Rules = [
      ThreeSpaceRule,
      FourSpaceRule,
      FourConsecutiveRule,
      ThreeConsecutiveRule,
      OtherThreePeriodRule
    ]

  end
end
