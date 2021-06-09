//
//  ViewController.swift
//  iTunesApp
//
//  Created by Maksim Romanov on 09.06.2021.
//

import UIKit

class ViewController: UIViewController {
    var viewModel: ViewModelProtocol!

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = viewModel.title
    }
}

