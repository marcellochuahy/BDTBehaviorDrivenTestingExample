//
//  SceneDelegate.swift
//  BDTBehaviorDrivenTestingExample
//
//  Created by Marcello Chuahy on 11/08/20.
//  Copyright © 2020 Applause Codes. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

	var window: UIWindow?

	func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {

		guard
			let windowScene = (scene as? UIWindowScene)
		else {
			return
		}

		window = UIWindow(frame: windowScene.coordinateSpace.bounds)
		window?.windowScene = windowScene
		let viewController = ViewController()
		let navigationController = UINavigationController(rootViewController: viewController)
		let rootViewController = navigationController
		window?.rootViewController = rootViewController
		window?.makeKeyAndVisible()

	}

}
