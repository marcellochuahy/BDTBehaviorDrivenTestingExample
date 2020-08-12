//
//  ViewCodeProtocol.swift
//  BDTBehaviorDrivenTestingExample
//
//  Created by Marcello Chuahy on 12/08/20.
//  Copyright © 2020 Applause Codes. All rights reserved.
//

protocol ViewCodeProtocol: class {

	func buildViewHierarchy()
	func configureConstraints()
	func configureComplementaryConfiguration()

	func callsViewCodeMethodsInCorrectSequence()

}

extension ViewCodeProtocol {

	func callsViewCodeMethodsInCorrectSequence() {
		buildViewHierarchy()
		configureConstraints()
		configureComplementaryConfiguration()
	}

}
