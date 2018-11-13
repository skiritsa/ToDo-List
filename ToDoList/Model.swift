//
//  Model.swift
//  ToDoList
//
//  Created by Alex Kiritsa on 11/11/18.
//  Copyright © 2018 Alex Kiritsa. All rights reserved.
//

import Foundation

var ToDoItems: [[String: Any]] {
    set {
        UserDefaults.standard.set(newValue, forKey: "ToDoDataKey")
        UserDefaults.standard.synchronize()
    }
    get {
        if let array = UserDefaults.standard.array(forKey: "ToDoDataKey") as? [[String: Any]] {
            return  array
        } else {
            return []
        }
    }
}

func addItem (nameItem: String, isCompleted: Bool = false) {
    ToDoItems.append(["Name": nameItem, "isCompleted": isCompleted])
}

func removeItem(at index: Int) {
    ToDoItems.remove(at: index)
}

func moveItem (fromIndex: Int, toIndex: Int) {
    let from = ToDoItems[fromIndex]
    ToDoItems.remove(at: fromIndex)
    ToDoItems.insert(from, at: toIndex)
}

func changeState (at item: Int) -> Bool{
    ToDoItems[item]["isCompleted"] = !(ToDoItems[item]["isCompleted"] as! Bool)
    return ToDoItems[item]["isCompleted"] as!  Bool
}
