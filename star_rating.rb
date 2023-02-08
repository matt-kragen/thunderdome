# Have the function StringChallenge(str) take the str parameter being passed which will be an average rating between 0.00 and 5.00, and convert this rating into a list of 5 image names to be displayed in a user interface to represent the rating as a list of rating and half rating. Ratings should be rounded to the nearest half. There are 3 image file names available: "full", "half", "empty". The output will be the name of the 5 images (without the extension), from left to right, separated by spaces. For example: if str is "2.36" then this should be displayed by the following image:

# So your program should return the string "full full half empty empty".

# Examples
# Input: "0.38"
# Output: half empty empty empty empty
# Input: "4.5"
# Output: full full full full half

def StringChallenge(str)
    rating = [] # stores the eventual rating
    stars = str.split('.') # splits into whole and decimal
    
    # adds whole stars if any
    (stars[0].to_i).times do
        rating << 'full'
    end

    if stars[1].to_i >= 25 && stars[1].to_i < 75
        # adds half star if any
        rating << 'half'
    elsif stars[1].to_i >= 75
        # adds full star if above 75%
        rating << 'full'
    end
    
    # fill in empty stars
    while rating.count < 5
        rating << 'empty'
    end

    # return rating
    return rating.join(' ')
end

p StringChallenge("0.38") # half empty empty empty empty
p StringChallenge("4.5") # full full full full half
p StringChallenge("2.36") # full full half empty empty
p StringChallenge("3.75") # full full full full empty