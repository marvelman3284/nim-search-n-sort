import std/strformat
import std/random
import std/math
import std/algorithm
import std/times


proc genArr(len, max: int): seq[int] =

    randomize()

    for _ in 1..len:
        result.add(rand(max))

    sort(result)


proc linearSearch(vals: seq[int], key: int): bool = 
    for i in 0..<len(vals):
        if vals[i] == key:
            echo(fmt"found {key} at index {i}")
            return true

proc binarySearch(vals: seq[int], key: int): bool = 
    var bot = 0
    var top = len(vals)

    while not result:
        var mid = floor((top + bot) / 2).toInt
        echo(fmt"mid: {mid}, bot: {bot}, top: {top}")

        if vals[mid] < key:
            bot = mid + 1
        elif vals[mid] > key:
            top = mid - 1
        elif key == vals[mid]:
            echo(fmt"found {key} at index {mid}")
            result = true
        else:
            echo("something went wrong :(")


var lst = genArr(10, 20)
let key = sample(lst)
echo lst

var time = cpuTime()
discard linearSearch(lst, key)
echo (fmt"time taken: {cpuTime() - time}")

let list: seq[int] = sorted(lst, system.cmp)
time = cpuTime()
discard binarySearch(list, key)
echo (fmt"time taken: {cpuTime() - time}")
