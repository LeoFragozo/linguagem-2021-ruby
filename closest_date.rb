def future_dates(arr, queries)
  sorted_arr = arr.sort { |a, b| compare_arr(a, b) }
  result = []

  queries.each do |query|
    i = 0
    i += 1 while i < arr.size && compare_arr(query, sorted_arr[i]) == 1

    result << (i < arr.size ? sorted_arr[i] : -1)
  end

  result
end

def compare_arr(date1, date2)
  day1, month1, year1 = date1.split('/').map(&:to_i)
  day2, month2, year2 = date2.split('/').map(&:to_i)

  return year1 <=> year2 if (year1 <=> year2) != 0

  return month1 <=> month2 if (month1 <=> month2) != 0

  day1 <=> day2
end

arr = ['02/12/1997', '18/06/2017']
queries = ['20/06/1993', '20/08/2005']

p future_dates(arr, queries).to_s
