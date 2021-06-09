//
//  AppCoordinator.swift
//  iTunesApp
//
//  Created by Maksim Romanov on 09.06.2021.
//

import UIKit

class AppCoordinator: BaseCoordinator {    
    override func start() {        
        let coordinator = ViewCoordinator()
        coordinator.navigationController = self.navigationController
        coordinator.parentCoordinator = self
        coordinator.start()
    }
    
}
