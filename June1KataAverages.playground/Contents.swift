//: Playground - noun: a place where people can play

import UIKit

var array:Array<Int> = Array(1...100)
var duplicate = array

var sum: Int = 0
func findAv1() -> Int {
    var i:Int = 0
while (i < array.count){
    sum = array[i] + sum
    i = i + 1
}
    return(sum/array.count)
}

sum = 0
func findAv2(){
    
    
}






//array.forEach(<#T##body: (Range<Int>) throws -> Void##(Range<Int>) throws -> Void#>)
//foreach


//map


findAv1()
