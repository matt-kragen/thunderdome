# Given a time in -hour AM/PM format, convert it to military (24-hour) time.

def timeConversion(s)
    split_str = s[0..-3].split(':')
    if s[-2] == 'P'
        if split_str[0] == '12'
        return split_str.join(':')
      else
        split_str[0] = split_str[0].to_i + 12
        return split_str.join(':')
      end
    else
      if split_str[0] == '12'
        split_str[0] = '00'
        return split_str.join(':')
      else
        return split_str.join(':')
      end
    end
end

time_1 = "07:05:45PM" # 19:05:45
time_2 = "12:40:22AM" # 00:40:22

p timeConversion(time_1)
p timeConversion(time_2)