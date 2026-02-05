import UIKit

//Automatic Reference Counting(ARC)
//memory leaks
//weak or unowned

class TestClass{
    var testClass: TestClass? = nil
    init () {
        print("Initialized TestClass")
    }
    deinit {
        print("Deinitialized TestClass")
    }
}

var testClass1: TestClass? = TestClass()
//testClass1 = nil
var testClass2: TestClass? = TestClass()

testClass1?.testClass = testClass2
testClass2?.testClass = testClass1
testClass1 = nil
testClass2 = nil

