//
//  Model.swift
//  ToDoList
//
//  Created by Alex Kiritsa on 11/11/18.
//  Copyright © 2018 Alex Kiritsa. All rights reserved.
//

import Foundation

var ToDoItems: [[String: Any]] = [["Name": "Позвонить маме", "isCompleted": true], ["Name": "Написать приложение", "isCompleted": false], ["Name": "Отметить", "isCompleted": false]]

func addItem (nameItem: String, isCompleted: Bool = false) {
    ToDoItems.append(["Name": nameItem, "isCompleted": isCompleted])
    saveData()
}

func removeItem(at index: Int) {
    ToDoItems.remove(at: index)
    saveData()
}

func changeState (at item: Int) -> Bool{
    ToDoItems[item]["isCompleted"] = !(ToDoItems[item]["isCompleted"] as! Bool)
    saveData()
    return ToDoItems[item]["isCompleted"] as!  Bool
}

func saveData() {
    
}

func loadData() {
    
}
