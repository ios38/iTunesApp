//
//  ViewCoordinator.swift
//  iTunesApp
//
//  Created by Maksim Romanov on 09.06.2021.
//

import UIKit

class ViewCoordinator: BaseCoordinator {
    override func start() {
        let viewController = ViewController()
        
        // Coordinator initializes and injects viewModel
        let viewModel = ViewModel(title: "Title")
        viewController.viewModel = viewModel

        self.navigationController.viewControllers = [viewController]
        setAsRoot(self.navigationController)
    }
}
