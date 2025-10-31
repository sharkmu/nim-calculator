import strutils

echo "--- This is a calculator ---\n"
echo "Please enter the first number:"
let num1 = readLine(stdin)
echo "Please enter the second number:"
let num2 = readLine(stdin)
echo "Please choose an operation:"
let operation = readLine(stdin)

func inputToInt(a: string, b: string): (int, int) =
    return (parseInt(a), parseInt(b))

func addition(a: string, b: string): int =
    let nums = inputToInt(a, b)
    return nums[0]+nums[1]

func subtraction(a: string, b: string): int =
    let nums = inputToInt(a, b)
    return nums[0]-nums[1]

func multiplication(a: string, b: string): int =
    let nums = inputToInt(a, b)
    return nums[0]*nums[1]

func division(a: string, b: string): int =
    let nums = inputToInt(a, b)
    return toInt(nums[0]/nums[1])

case operation
of "+": echo $addition(num1, num2)
of "-": echo $subtraction(num1, num2)
of "*": echo $multiplication(num1, num2)
of "/": echo $division(num1, num2)
of ":": echo $division(num1, num2)
else: echo "No such operation"
