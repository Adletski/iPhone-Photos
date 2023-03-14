//
//  TabBarController.swift
//  iPhone Photos app
//
//  Created by Adlet Zhantassov on 14.03.2023.
//

import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTabBarController()
        setupTabBarViewControllers()
    }
    
    func setupTabBarController() {
        tabBar.tintColor = .black
        tabBar.backgroundColor = .gray
    }
    
    func setupTabBarViewControllers() {
        let libraryVC = LibraryViewController()
        let libraryIcon = UITabBarItem(title: "photo.artframe", image: UIImage(systemName: "house"), selectedImage: UIImage(systemName: "photo.artframe"))
        libraryVC.tabBarItem = libraryIcon
        
        let foryouVC = ForYouViewController()
        let foryouIcon = UITabBarItem(title: "For You", image: UIImage(systemName: "lock.doc"), selectedImage: UIImage(systemName: "lock.doc.fill"))
        foryouVC.tabBarItem = foryouIcon
        
        let albumVC = AlbumsViewController()
        let albumIcon = UITabBarItem(title: "Album", image: UIImage(systemName: "creditcard"), selectedImage: UIImage(systemName: "creditcard.fill"))
        albumVC.tabBarItem = albumIcon
        
        let searchVC = SearchViewController()
        let searchIcon = UITabBarItem(title: "Search", image: UIImage(systemName: "magnifyingglass"), selectedImage: UIImage(systemName: "magnifyingglass"))
        searchVC.tabBarItem = searchIcon
        
        let libraryNC = UINavigationController(rootViewController: libraryVC)
        let foryouNC = UINavigationController(rootViewController: foryouVC)
        let albumNC = UINavigationController(rootViewController: albumVC)
        let searchNC = UINavigationController(rootViewController: searchVC)
        
        let controllers = [libraryNC,foryouNC,albumNC,searchNC]
        self.setViewControllers(controllers, animated: true)
    }
}
