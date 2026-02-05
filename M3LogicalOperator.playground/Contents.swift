import UIKit

/*
 Logical Operator: AND(&&), OR(||), NOT(!)
 */

true && true
true && false
false && true
false && false

true || true
true || false
false || true
false || false

!true
!false

//Ternary
//condition ? valueIftrue: valueIffalse

let age: Int = 19
if age >= 19{
    print("adult")
}else{
    print("minor")
}

let result: String = age >= 19 ? "adult" : "minor"
print(result)



