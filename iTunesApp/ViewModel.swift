//
//  ViewModel.swift
//  iTunesApp
//
//  Created by Maksim Romanov on 09.06.2021.
//

import Foundation

protocol ViewModelProtocol: AnyObject {
    var title: String? { get }
}

class ViewModel: ViewModelProtocol {
    var title: String?
    
    init(title: String) {
        self.title = "Title"
    }
}
