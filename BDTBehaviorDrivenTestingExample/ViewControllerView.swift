//
//  ViewControllerView.swift
//  BDTBehaviorDrivenTestingExample
//
//  Created by Marcello Chuahy on 12/08/20.
//  Copyright © 2020 Applause Codes. All rights reserved.
//

import UIKit
import SnapKit

class ViewControllerView: UIView {

	// MARK: - Properties
	lazy var label: UILabel = { return UILabel(frame: .zero) }()

	// MARK: - Initializers
	override init(frame: CGRect = .zero) {
		super.init(frame: frame)
		callsViewCodeMethodsInCorrectSequence()
	}

	required init?(coder: NSCoder) {
		return nil
	}

}

extension ViewControllerView: ViewCodeProtocol {

	func buildViewHierarchy() {
		addSubview(label)
	}

	func configureConstraints() {
		label.snp.makeConstraints { (make) -> Void in
			make.center.equalToSuperview()
		}
	}

	func configureComplementaryConfiguration() {
		self.backgroundColor = .red
		label.text = "Hello, World."
	}

}
