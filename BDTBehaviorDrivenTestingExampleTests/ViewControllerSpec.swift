//
//  ViewControllerSpec.swift
//  BDTBehaviorDrivenTestingExampleTests
//
//  Created by Marcello Chuahy on 11/08/20.
//  Copyright © 2020 Applause Codes. All rights reserved.
//

import Quick
import Nimble
@testable import BDTBehaviorDrivenTestingExample

class ViewControllerSpec: QuickSpec {
	override func spec() {
		
		var sut: ViewController!
		
		beforeEach {
			sut = ViewController()
		}

		// describe -> what action or behavior you’ll be testing
		// context  -> specific context of the action you’ll be testing
		// it       -> specific expected result for the test
		
		// load
		// a initial view controller
		// should show a red background

		describe("load") {
			context("a initial view controller") {
				it("should show a red background") {
					sut.loadView()
					expect(sut.view.backgroundColor).to(equal(UIColor.red))
				}
			}
		}
		
	}
}



/*

# Podfile
# -------

use_frameworks!

target "ProjectName" do

    inherit! :search_paths

    abstract_target 'Tests' do
        target "ProjectNameTests"
        pod 'Quick'
        pod 'Nimble'
    end

end

*/
