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
assert input.len == 7

var numbers: seq[int] = @[]
for number in input:
  numbers.add(parse_int(number))

var user_nums: seq[int] = numbers[0..^2]
var target: int = numbers[numbers.len - 1]

proc A(a, b: int): int =
  a + b
proc S(a, b: int): int =
  a - b
proc M(a, b: int): int =
  a * b
proc D(a, b: int): int =
  a div b

proc execute(operands: seq[int], operation: proc): int =
  operation(operands[0], operands[1])

var ops: seq[proc] = @[A, S, M, D]

for op in ops:
    echo execute(user_nums[0..2], op)
