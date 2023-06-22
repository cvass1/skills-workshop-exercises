def leap_year?(year)
  year % 400 == 0 || (year % 100 != 0 && year % 4 == 0)
end

def leap_years(start_year, end_year)
  (start_year..end_year).to_a.filter{|year| leap_year?(year)}
end

def closest_leap_year(year)
  counter = 0
  loop do
    if leap_year?(year+counter) || leap_year?(year-counter)
      return leap_year?(year+counter) ? year+counter : year-counter
    end
    counter += 1
  end
end

