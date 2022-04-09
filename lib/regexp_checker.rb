print 'Text?: '
text = gets.chop

begin
  print 'Pattern?: '
  pattern = gets.chop
  regexp = Regexp.new(pattern)
rescue RegexpError => e
  puts "Invald pattern: #{e.message}"
  retry
end

matches = text.scan(regexp)
if matches.size > 0
  puts "Matched: #{matches.join(', ')}"
else
  puts 'Nothing matched.'
end
