//
//  MetalMetalViewInput.swift
//  TestInstruments
//
//  Created by Baigenzheev Nursat on 08/06/2022.
//  Copyright © 2022 TestInstrumentsCo. All rights reserved.
//

protocol MetalViewInput: AnyObject {
    func setupInitialState()
}

protocol MetalViewOutput: AnyObject {
    func viewIsReady()
}

protocol MetalInteractorInput: AnyObject {

}

protocol MetalInteractorOutput: AnyObject {

}

protocol MetalRouterInput: AnyObject {

}

