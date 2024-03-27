//
//  ItemModel.swift
//  TodoList
//
//  Created by Kelvin Abaidoo on 25/03/2024.
//

import Foundation
struct ItemModel:Identifiable{
    let id:String = UUID().uuidString
    let title:String
    let isCompleted: Bool
    
}
