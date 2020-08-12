//
//  ViewController.swift
//  BDTBehaviorDrivenTestingExample
//
//  Created by Marcello Chuahy on 11/08/20.
//  Copyright © 2020 Applause Codes. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

	let viewControllerView = ViewControllerView()

	override func loadView() {
		view = viewControllerView
	}

	override func viewDidLoad() {
		super.viewDidLoad()
		title = "Primeira Tela do App"
	}

}
