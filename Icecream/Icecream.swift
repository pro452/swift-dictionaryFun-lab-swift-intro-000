//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    var favoriteFlavorsOfIceCream = ["Joe" : "Peanut Butter and Chocolate", "Tim" : "Natural Vanilla","Sophie" : "Mexican Chocolate", "Deniz" : "Natural Vanilla", "Tom" : "Mexican Chocolate", "Jim" : "Natural Vanilla", "Susan" : "Cookies 'N' Cream"]
    
    
    
    
    // 2.
    func names(forFlavor flavor: String) -> [String]{
        var tempList: [String] = []
        for person in favoriteFlavorsOfIceCream {
            if person.value == flavor {
                tempList.append(person.key)
            }
        }
        return tempList
    }
    
    
    
    
    
    // 3.
    
    func count(forFlavor: String) -> Int { //to be countined....immedately
        var count = 0
        for person in favoriteFlavorsOfIceCream {
            if person.value == forFlavor {
                count += 1
            }
        }
        return count
    }
    
    
    
    
    // 4.
    
    func flavor(forPerson: String) -> String? {
        if (favoriteFlavorsOfIceCream[forPerson] != nil) {
            return favoriteFlavorsOfIceCream[forPerson]
        } else {
            return nil
        }
    }
    
    
    
    
    
    // 5.
    
    func replace(flavor: String, forPerson: String) -> Bool {
        if favoriteFlavorsOfIceCream[forPerson] == nil {
            return false
        } else {
            if favoriteFlavorsOfIceCream[forPerson] == flavor {
                return false
            } else {
                favoriteFlavorsOfIceCream.updateValue(flavor, forKey: forPerson)
                return true
            }
        }
    }
    
    
    
    
    
    // 6.
    
    func remove(person: String) -> Bool {
        if favoriteFlavorsOfIceCream[person] == nil {
            return false
        } else {
            favoriteFlavorsOfIceCream.removeValue(forKey: person)
            return true
        }
    }
    
    
    
    
    
    
    // 7.
    
    func numberOfAttendees() -> Int {
        return favoriteFlavorsOfIceCream.count
    }
    
    
    
    
    
    
    // 8.
    
    func add(person: String, withFlavor: String) -> Bool {
        if favoriteFlavorsOfIceCream[person] == nil {
            favoriteFlavorsOfIceCream.updateValue(withFlavor, forKey: person)
            return true
        } else {
            return false
        }
    }
    
    
    
    
    
    
    
    // 9.
    
    func attendeeList() -> String {
        let sortedList = favoriteFlavorsOfIceCream.sorted(by: <)
        var sentence = ""
        for (person,value) in sortedList.enumerated() {
            sentence += "\(value.key) likes \(value.value)\n"
        }
        return sentence
    }
    
    
    
    
    
    
    
}
