# what_century_is_that.rb

YEAR_ENDINGS = {
  '0': 'th',
  '1': 'st',
  '2': 'nd',
  '3': 'rd',
  '4': 'th',
  '5': 'th',
  '6': 'th',
  '7': 'th',
  '8': 'th',
  '9': 'th',
  '10': 'th',
  '11': 'th',
  '12': 'th',
  '13': 'th',
  '14': 'th',
  '15': 'th',
  '16': 'th',
  '17': 'th',
  '18': 'th',
  '19': 'th'
}

def century(year)
  year = (year - 1) / 100 + 1
  year = year.to_s

  if year[-2] == '1'
    last_year_digits = year[-2..-1].to_sym
  else
    last_year_digits = year[-1].to_sym
  end

  year + YEAR_ENDINGS[last_year_digits]
end

puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th'
