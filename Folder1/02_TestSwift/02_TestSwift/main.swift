// main.swift
// ==========
// 02_TestSwift: Testing struct/class/extension/cating
//
//  AUTHOR: Lin Cui
// CREATED: 2019-09-09
// UPDATED:2020-09-25

import Foundation


//=============================================================================
// TASK01: Struct (note02, page 2)
// define Student struct and add id/firstName/lastName props,
// fullName as computed prop, getLastLast() function
// Then, assign it with your name and test with print()
print("=====TASK01=====")
struct Student
{
    // stored properties
    var id : Int
    var firstName : String
    var lastName : String
    // computed properties
    var fullName: String{
        return firstName + " " + lastName
    }
    // initializer (ctor)

    init(){
        //self is not mandotory
        self.id = 0
        self.firstName = ""
        self.lastName = ""
    }
    // methods
    func getLastFirst() -> String{
        return self.lastName + ", " + self.firstName
        
    }
    
}

// create instance of struct using designated init ans set with your name

    var s = Student()
    s.firstName = "Lin"
    s.id = 991456394
    s.lastName = "Cui"
    print(s)



//=============================================================================
// TASK02: extension (note02, page 6)
// Add "double" computed prop and multiplyBy() into Int struct,
// then test the extension with print
print("=====TASK02=====")
extension Int
{
    // add new computed property
    var double : Int{
        return 2 * self
    }
    // add new method
    func mutiplyBy(_ number: Int) -> Int {
        return self * number
    }
}



//=============================================================================
// TASK03: encapsulation (note02, page 8)
// define Parent class and add read-only (no setter) x prop in it
// then, create an instance of Parent, c1
print("=====TASK03=====")
class Parent
{
    //private var x: Int = 0        // accessible within this class
    private(set) var x:Int = 0
}
var c1 = Parent()
//c1.x = 1 // compile error, cannot access setter
print(c1.x)


//=============================================================================
// TASK04: upcast & downcast
// define a subclass Child cotaining y prop
print("=====TASK04=====")
class Child : Parent{
    var y:Int = 0
}

// then create instance c2 as Child
// define c3 by upcasting c2 as Parent
// define c4 by downcasting as Child
let c2 = Child()        // create child class object
let c3 = c2 as Parent  //upcast
//let c4:Child = c3 as? Child
//let c4 = c3 as! String
//print(type(of: c3))
//if let unwrapped = c4 {
   // print
//}
//NOTE: forced downcast will crash if casting failed (not safe)
//let c6 = c3 as! String
