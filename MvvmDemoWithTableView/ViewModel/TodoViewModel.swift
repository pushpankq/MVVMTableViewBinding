//
//  TodoViewModel.swift
//  MvvmDemoWithTableView
//
//  Created by Puspank Kumar on 09/06/19.
//  Copyright © 2019 Puspank Kumar. All rights reserved.
//

protocol TodoItemPresentable {
    var id: String? { get }
    var textValue: String? { get }
}

struct TodoItemViewModel: TodoItemPresentable {
    var id: String? = "0"
    var textValue: String?
}

protocol TodoItemViewDelegate {
    func onTodoItemAdded() -> ()
}

struct TodoViewModel {
    
    var newTextValue: String?
    var items: [TodoItemPresentable] = []
    
    init() {
        let item1 = TodoItemViewModel(id: "1", textValue: "Washing clothes")
        let item2 = TodoItemViewModel(id: "2", textValue: "Buy clothes")
        let item3 = TodoItemViewModel(id: "3", textValue: "Washing car")
        items.append(contentsOf: [item1, item2, item3])
    }

}


extension TodoViewModel: TodoItemViewDelegate {
    
    func onTodoItemAdded()  {
    }
    
}
