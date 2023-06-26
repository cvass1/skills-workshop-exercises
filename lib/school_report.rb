def report(grade_string)
  grades = {}
  grade_string.downcase.split(",").map do |grade| 
    grades[grade.strip].nil? ? grades[grade.strip] = 1 : grades[grade.strip] += 1
  end

  grades.map{|k,v| "#{k.capitalize}: #{v}"}.join("\n")
end