def pluralize(period)
  period > 1 ? 's' : ''
end
def format_duration(seconds)
  #your code here
  yr_in_secs, days_in_secs, hr_in_secs, min_in_sec = 31536000, 86400, 3600, 60
  result = ''
  return 'now' if seconds == 0
  while seconds > 59
    if  seconds >= yr_in_secs
      year = seconds / yr_in_secs
      result += "#{year} year#{pluralize(year)}"
      seconds %= yr_in_secs
      if (seconds / days_in_secs > 0 || seconds / hr_in_secs > 0 || seconds / min_in_sec > 0) && seconds > 0
          result += ', '
      elsif seconds == 0
          result
      else
          result += ' and '
      end
    elsif seconds >= days_in_secs
      days = seconds / days_in_secs
      result += "#{days} day#{pluralize(days)}"
      seconds %= days_in_secs
      if (seconds / hr_in_secs > 0 || seconds / min_in_sec > 0) && seconds > 0
          result += ', '
      elsif seconds == 0
          result
      else
          result += ' and '
      end
    elsif seconds >= hr_in_secs
      hours = seconds / hr_in_secs
      result += "#{hours} hour#{pluralize(hours)}"
      seconds %= hr_in_secs
      puts "seconds after modulus is #{seconds} and seconds / min_in_sec is #{seconds / min_in_sec}"
      if seconds / min_in_sec > 0
          result += ' and '
      elsif seconds == 0
          result
      else
          result += ', '
      end
    elsif seconds >= min_in_sec
      mins = seconds / min_in_sec
      result += "#{mins} minute#{pluralize(mins)}"
      seconds %= min_in_sec
      result += ' and ' if seconds > 0
    end
  end
  if seconds > 0
    result += "#{seconds} second#{pluralize(seconds)}"
  else
    result
  end
end

# p format_duration(31536700 * 2) # => "2 years, 23 minutes and 20 seconds"
# p format_duration(72) # => "1 minute and 12 seconds"
# p format_duration(2890) # => "48 minutes and 10 seconds"
# p format_duration(60) # => "1 minute"
# p format_duration(62) # => "1 minute and 2 seconds"
# p format_duration(0) # => "now"
# p format_duration(2) # => 2 seconds
p format_duration(3662) # => "1 hour, 1 minute and 2 seconds"
# p format_duration(3600) # => "1 hour"
p format_duration(132030240) # => "4 years, 68 days, 3 hours and 4 minutes"
p format_duration(583211) # => "6 days, 18 hours and 11 seconds"