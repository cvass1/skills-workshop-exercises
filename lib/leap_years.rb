def leap_year?(year)
  year % 400 == 0 || (year % 100 != 0 && year % 4 == 0)
end

def leap_years(start_year, end_year)
  (start_year..end_year).to_a.filter{|year| leap_year?(year)}
end

def closest_leap_year(year)
  forward_counter = 0
  backward_counter = 0
  while true
    break if leap_year?(year+forward_counter)
    forward_counter += 1
  end

  while true
    break if leap_year?(year-backward_counter)
    backward_counter += 1
  end
  
  if backward_counter < forward_counter
    year - backward_counter
  else
    year + forward_counter
  end
end

