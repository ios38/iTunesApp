//
//  ViewModel.swift
//  iTunesApp
//
//  Created by Maksim Romanov on 09.06.2021.
//

import Foundation

struct Item {
    var name: String
}

protocol ViewModelProtocol: AnyObject {
    //input
    var searchText: String? { get set }
    var onItemsUpdated: ()->() { get set }

    //output
    var items: [Item] { get }
    
}

final class ViewModel: ViewModelProtocol {
    var onItemsUpdated: () -> () = { }
    
    var searchText: String? {
        didSet {
            if let searchText = searchText, searchText.count > 0 {
                self.items = loadItems().filter({ $0.name.contains(searchText) })
            } else {
                self.items = loadItems()
            }
            onItemsUpdated()
        }
    }
    
    var items: [Item] = []
    
    init() {
        self.items = loadItems()
    }
    
    func loadItems() -> [Item] {
        var items: [Item] = []
        (1...50).forEach { i in
            items.append(Item(name: "Item #\(i)"))
        }
        return items
    }
}
