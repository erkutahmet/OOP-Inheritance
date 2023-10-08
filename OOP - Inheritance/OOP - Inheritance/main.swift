//
//  main.swift
//  OOP - Inheritance
//
//  Created by Ahmet Erkut on 8.10.2023.
//

import Foundation
/*
    Inheritance is a fundamental concept in object-oriented programming (OOP) that allows you to create a new class (called a subclass or derived class) based on an existing class (called a superclass or base class). In Swift, you can use inheritance to define a new class that inherits the properties and behaviors (i.e., methods and properties) of an existing class, allowing you to reuse and extend code.
*/

///1. Define a Base Class (Superclass):
///Start by creating a base class, which is the class that you want to inherit from. The base class defines the common properties and behaviors that you want to reuse in subclasses. You can define a base class using the class keyword.
class House {
    var windowAmount: Int?
    
    init(windowAmount: Int) {
        self.windowAmount = windowAmount
    }
}

///2. Create a Subclass:
///To create a subclass, use the class keyword followed by the subclass name, a colon, and the name of the superclass. In the subclass, you can add additional properties and behaviors or override the ones inherited from the superclass.
class Palace: House {
    var towerAmount: Int?
    
    init(towerAmount: Int, window: Int) {
        self.towerAmount = towerAmount
        super.init(windowAmount: window)
    }
}

class Villa: House {
    var garageAvailable: Bool?
    
    init(garageAvailable: Bool, window: Int) {
        self.garageAvailable = garageAvailable
        super.init(windowAmount: window)
    }
}

///3. Creating Instances:
///You can create instances of both the base class and the subclass:
let topkapiPalace = Palace(towerAmount: 5, window: 300)
let villa = Villa(garageAvailable: true, window: 30)

///4. Accessing Properties and Methods:
///You can access properties and methods of both the superclass and subclass instances:
print(topkapiPalace.towerAmount!)
print(topkapiPalace.windowAmount!)

print(villa.garageAvailable!)
print(villa.windowAmount!)
