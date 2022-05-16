import std/strformat
import std/random
import std/sequtils


proc genArr(len, max: int): tuple[vars: seq[int], key: int] =  

    randomize()

    for i in 0..<len:
        var randomNum: int = rand(max)
        while randomNum notin result.vars:
            result.vars.add(randomNum)

    result.key = sample(result.vars)
 

proc linearSearch(vals: seq[int], key: int): bool = 
    for i in 0..<len(vals):
        if vals[i] == key:
            echo(fmt"found {key} at index {i}")
            return true


var lst = genArr(10, 400)
echo lst
echo len(lst.vars)
discard linearSearch(lst.vars, lst.key)