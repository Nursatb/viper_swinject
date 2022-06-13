//
//  MetalMetalViewController.swift
//  TestInstruments
//
//  Created by Baigenzheev Nursat on 08/06/2022.
//  Copyright © 2022 TestInstrumentsCo. All rights reserved.
//

import UIKit
import Metal

class MetalViewController: ViewController, MetalViewInput {

    var presenter: MetalViewOutput?

    override func loadView() {
        
    }
    
    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGreen
        presenter?.viewIsReady()
    }


    // MARK: MetalViewInput
    func setupInitialState() {
    }
}
