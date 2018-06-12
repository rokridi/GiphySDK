//
//  ModelsTests.swift
//  GiphySDKTests
//
//  Created by Mohamed Aymen Landolsi on 11/06/2018.
//  Copyright © 2018 Rokridi. All rights reserved.
//

import Foundation
import Quick
import Nimble
@testable import GiphySDK

class ModelsTests: QuickSpec {
    
    override func spec() {
        
        describe("GIF") {
            
            context("when JSON is valid", {
                it("should return a valid GPHGif", closure: {
                    let gif = try! TestsHelper.modelFrom(file: "gif", type: GPHGif.self)
                    let json = try! TestsHelper.dicionaryFrom(file: "gif")
                    gif.validate(json: json)
                })
            })
            
            context("when JSON is not valid", {
                it("should return a nil GPHGif", closure: {
                    let gif = try? TestsHelper.modelFrom(file: "invalidGif", type: GPHGif.self)
                    expect(gif).to(beNil())
                })
            })
        }
        
        describe("Pagination") {
            
            context("when JSON is valid", {
                it("should return a valid GPHPagination", closure: {
                    let pagination = try! TestsHelper.modelFrom(file: "pagination", type: GPHPagination.self)
                    let json = try! TestsHelper.dicionaryFrom(file: "pagination")
                    pagination.validate(json: json)
                })
            })
            
            context("when JSON is not valid", {
                it("should return a nil GPHPagination", closure: {
                    let pagination = try? TestsHelper.modelFrom(file: "invalidPagination", type: GPHPagination.self)
                    expect(pagination).to(beNil())
                })
            })
        }
        
        describe("User") {
            
            context("when JSON is valid", {
                it("should return a valid GPHUser", closure: {
                    let user = try! TestsHelper.modelFrom(file: "user", type: GPHUser.self)
                    let json = try! TestsHelper.dicionaryFrom(file: "user")
                    user.validate(json: json)
                })
            })
            
            context("when JSON is not valid", {
                it("should return a nil GPHUser", closure: {
                    let user = try? TestsHelper.modelFrom(file: "invalidUser", type: GPHUser.self)
                    expect(user).to(beNil())
                })
            })
        }
    }
}
