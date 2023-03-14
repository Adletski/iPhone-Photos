//
//  SceneDelegate.swift
//  iPhone Photos app
//
//  Created by Adlet Zhantassov on 14.03.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: windowScene)
        
//        let libraryVC = LibraryViewController()
//        let libraryIcon = UITabBarItem(title: "photo.artframe", image: UIImage(systemName: "house"), selectedImage: UIImage(systemName: "photo.artframe"))
//        libraryVC.tabBarItem = libraryIcon
//
//        let foryouVC = ForYouViewController()
//        let foryouIcon = UITabBarItem(title: "For You", image: UIImage(systemName: "lock.doc"), selectedImage: UIImage(systemName: "lock.doc.fill"))
//        foryouVC.tabBarItem = foryouIcon
//
//        let albumVC = AlbumsViewController()
//        let albumIcon = UITabBarItem(title: "Album", image: UIImage(systemName: "creditcard"), selectedImage: UIImage(systemName: "creditcard.fill"))
//        albumVC.tabBarItem = albumIcon
//
//        let searchVC = SearchViewController()
//        let searchIcon = UITabBarItem(title: "Search", image: UIImage(systemName: "magnifyingglass"), selectedImage: UIImage(systemName: "magnifyingglass"))
//        searchVC.tabBarItem = searchIcon
//
//        let libraryNC = UINavigationController(rootViewController: libraryVC)
//        libraryNC.navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(libraryNCleftButtonTapped))
//        libraryNC.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(libraryNCleftButtonTapped))
//        let foryouNC = UINavigationController(rootViewController: foryouVC)
//        let albumNC = UINavigationController(rootViewController: albumVC)
//        let searchNC = UINavigationController(rootViewController: searchVC)
//
//        let tabBarController = UITabBarController()
//        tabBarController.addChild(libraryNC)
//        tabBarController.addChild(foryouNC)
//        tabBarController.addChild(albumNC)
//        tabBarController.addChild(searchNC)
        
        window.rootViewController = TabBarController()
        window.makeKeyAndVisible()
        self.window = window
    }
    
    @objc private func libraryNCleftButtonTapped() {
        
    }
}

