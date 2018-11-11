//
//  Model.swift
//  ToDoList
//
//  Created by Alex Kiritsa on 11/11/18.
//  Copyright © 2018 Alex Kiritsa. All rights reserved.
//

import Foundation

var ToDoItems: [String] = ["Позвонить маме", "Написать приложение", "Протестировать"]

func addItem (nameItem: String) {
    ToDoItems.append(nameItem)
    saveData()
}

func removeItem(at index: Int) {
    ToDoItems.remove(at: index)
    saveData()
}

func saveData() {
    
}

func loadData() {
    
}
