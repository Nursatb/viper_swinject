//
//  MetalMetalPresenter.swift
//  TestInstruments
//
//  Created by Baigenzheev Nursat on 08/06/2022.
//  Copyright © 2022 TestInstrumentsCo. All rights reserved.
//

class MetalPresenter: MetalViewOutput, MetalInteractorOutput {

    weak var view: MetalViewInput?
    var interactor: MetalInteractorInput?
    var router: MetalRouterInput?

    func viewIsReady() {

    }
}
