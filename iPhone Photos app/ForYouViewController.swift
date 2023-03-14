//
//  ForYouViewController.swift
//  iPhone Photos app
//
//  Created by Adlet Zhantassov on 14.03.2023.
//

import UIKit

class ForYouViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "For You"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
}
