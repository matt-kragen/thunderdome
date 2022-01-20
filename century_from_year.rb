def century_from_year(year)
    # my goal here is to return at least one integer representing the century
    if (year % 100) == 0
        return year / 100
    else 
        return (year - (year % 100)) / 100 + 1
    end
end

y1 = 1995
y2 = 436
y3 = 45
y4 = 1700
p century_from_year(y1) # 20
p century_from_year(y2) # 5
p century_from_year(y3) # 1
p century_from_year(y4) # 17