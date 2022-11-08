# For this challenge, you're going to write the OT validation function.
# The function will take in a string for the stale file contents,
# a string containing the latest file contents,
# and a JSON string containing the operations.
# Your function should validate that the sequence of operations,
# when applied to the stale contents, produces the latest contents.
# If it does not, or if the sequence of operations is invalid,
# your function should return false.

# You can't skip past the end of a string
# You can't delete past the end of a string
# Delete operations are applied forward while keeping the cursor in place

stale1 = 'Repl.it uses operational transformations to keep everyone in a multiplayer repl in sync.'
latest1 = 'Repl.it uses operational transformations.'
otjson1 = '[{"op": "skip", "count": 40}, {"op": "delete", "count": 47}]'
# true

stale2 = 'Repl.it uses operational transformations to keep everyone in a multiplayer repl in sync.'
latest2 = 'Repl.it uses operational transformations.'
otjson2 = '[{"op": "skip", "count": 45}, {"op": "delete", "count": 47}]'
# false, delete past end

stale3 = 'Repl.it uses operational transformations to keep everyone in a multiplayer repl in sync.'
latest3 = 'Repl.it uses operational transformations.'
otjson3 = '[{"op": "skip", "count": 40}, {"op": "delete", "count": 47}, {"op": "skip", "count": 2}]'
# false, skip past end

stale4 = 'Repl.it uses operational transformations to keep everyone in a multiplayer repl in sync.'
latest4 = 'We can use operational transformations to keep everyone in a multiplayer repl in sync.'
otjson4 = '[{"op": "delete", "count": 7}, {"op": "insert", "chars": "We"}, {"op": "skip", "count": 4}, {"op": "delete", "count": 1}]'
# false

stale5 = 'Repl.it uses operational transformations to keep everyone in a multiplayer repl in sync.'
latest5 = 'Repl.it uses operational transformations to keep everyone in a multiplayer repl in sync.'
otjson5 = '[]'
# true

def isValid(stale, latest, otjson)
  # Banana
end