module Rainbowable
  def rainbow
    str = self.to_s
    count = 0
    colored_chars = []

    str.each_char do |char|
      color = 31 + count % 6
      colored_chars << "\e[#{color}m#{char}"
      count += 1
    end
    ret = colored_chars.join

    ret + "\e[0m"
  end
end
