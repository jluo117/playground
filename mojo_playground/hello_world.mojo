from random import seed,random_si64
from utils.vector import DynamicVector
from fruit import fruit
fn main():
    print("Hello World!")
    print(getSumOfTwoNumbers(random_si64(0,100), random_si64(0,100)))
    seed()
    var vector = DynamicVector[Int64]()
    for i in range(10):
        vector.append(random_si64(0,100))
    let result_ary = (getRunningSumOfArray(vector))
    for i in range(len(result_ary)):
        print(result_ary[i])
    var f = fruit("apple","red",random_si64(0,100),random_si64(0,100))
    print(f.getWeightWithPrice())

fn getSumOfTwoNumbers(a: Int64, b: Int64) -> Int64:
    return a + b

fn getRunningSumOfArray(array: DynamicVector[Int64]) -> DynamicVector[Int64]:
    var runningSum =  DynamicVector[Int64]()
    var sum: Int64 = 0
    for i in range(len(array)):
        sum += array[i]
        runningSum.append(sum)
    return runningSum

