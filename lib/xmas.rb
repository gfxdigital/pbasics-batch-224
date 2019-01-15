require 'date'

# Giving a date as the argument returns the number of days until christmas of
# the same year. If the date is after christmas day then returns days until
# christmas of next year.
def days_until_xmas(date = Date.today)
  year = date.year

  if date.month == 12 && date.day > 25
    year = date.year + 1
  end

  xmas_day = Date.new(year, 12, 25)

  (xmas_day - date).to_i
end

puts days_until_xmas

puts days_until_xmas(Date.new(2019, 12, 24)) == 1
puts days_until_xmas(Date.new(2019, 12, 26)) == 365
puts days_until_xmas(Date.new(2039, 12, 20)) == 5
puts days_until_xmas(Date.new(1999, 12, 25)) == 0