def sum_min(time, min)
  hh, mm = time.split(':').map(&:to_i)

  total_minutes = hh * 60 + mm + min

  hours = (total_minutes / 60) % 24
  mins = total_minutes % 60

  format('%<hours>02d:%<mins>02d', hours: hours, mins: mins)
end

p sum_min('14:25', 23)
