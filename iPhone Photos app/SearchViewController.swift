//
//  SearchViewController.swift
//  iPhone Photos app
//
//  Created by Adlet Zhantassov on 14.03.2023.
//

import UIKit

class SearchViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Search"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(libraryNCleftButtonTapped))
        navigationItem.leftBarButtonItem?.tintColor = .black
    }
    
    @objc func libraryNCleftButtonTapped() { }
}
