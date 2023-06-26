def report(grade_string)
  grade_array = grade_string.downcase.split(",")
  print grade_array
  green_counter = 0
  amber_counter = 0
  red_counter = 0
  grade_array.map {|grade|
    if grade.strip == "green"
      green_counter += 1
    elsif grade.strip == "amber"
      amber_counter += 1
    elsif grade.strip == "red"
      red_counter += 1
    end
  }
  grades = []
  if green_counter >0
    grades.push("Green: " + green_counter.to_s)
  end
  if amber_counter >0
    grades.push("Amber: " + amber_counter.to_s)
  end
  if red_counter >0
    grades.push("Red: " + red_counter.to_s)
  end
  return grades.join("\n")
end