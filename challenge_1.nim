# https://www.reddit.com/r/dailyprogrammer/comments/6fe9cv/20170605_challenge_318_easy_countdown_game_show/

# The user should input any 6 numbers (integers) and the target number
# The program outputs the operations to get the target
# 25 100 9 7 3 7 881
# Outputs 7 * 3 + 100 * 7 + 25 + 9 = 881
# 6 75 3 25 50 100 952
# Outputs
# 100 + 6 * 3 * 75 - 50 / 25 = 952
#
import strutils

echo "Input six integers and the target: "
var input: seq[string] = split(readLine(stdin))
assert len(input) == 7

var numbers: seq[int] = @[]
for number in input:
  numbers.add(parse_int(number))
