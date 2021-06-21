//
// PlaintextBodyDeserializerSpec.swift
//
// Copyright © 2016-2020 Netguru S.A. All rights reserved.
// Licensed under the MIT License.
//

import Foundation
import Nimble
import ResponseDetective
import Quick

internal final class PlaintextBodyDeserializerSpec: QuickSpec {

	override func spec() {

		describe("PlaintextBodyDeserializer") {

			let sut = PlaintextBodyDeserializer()

			it("should correctly deserialize plaintext data") {
				let source = "foo bar\nbaz qux"
				let data = source.data(using: .utf8)!
				let expected = source
				expect { sut.deserialize(body: data) }.to(equal(expected))
			}

		}

	}

}
