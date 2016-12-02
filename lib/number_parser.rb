require "pry"

class NumberParser
  TEXT_TO_NUMBERS = {
    [" _ ",
     "| |",
     "|_|",
     "   "] => "0",
    ["   ",
     "  |",
     "  |",
     "   "] => "1",
  }

  def self.parse filename
    document = File.read filename
    character_groups = character_groups(document)
    character_groups.map { |group| TEXT_TO_NUMBERS[group] }.join
  end

  def self.character_groups(text)
    text.split("\n").map { |s| s.scan(/.{3}/) }.transpose
  end
end
