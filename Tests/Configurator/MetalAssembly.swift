//
//  MetalAssembly.swift
//  TestInstruments
//
//  Created by Baigenzheev Nursat on 08/06/2022.
//  Copyright © 2022 TestInstrumentsCo. All rights reserved.
//

import Swinject

class MetalAssembly: Assembly {
    
    static let shared = Assembler([MetalAssembly()])
    
    func assemble(container: Container) {
        // MARK: - View
        container.register(MetalCoordinator.self) { r in
            MetalCoordinator()
        }
        
        // MARK: - View
        container.register(MetalViewController.self) { r in
            MetalViewController()
        }
        .initCompleted({ r, vc in
            vc.presenter = r.resolve(MetalViewOutput.self)
        })
        .implements(MetalViewInput.self)
        
        // MARK: - Interactor
        container.register(MetalInteractor.self) { r in
            MetalInteractor()
        }
        .initCompleted({ r, interactor in
            interactor.presenter = r.resolve(MetalInteractorOutput.self)
        })
        .implements(MetalInteractorInput.self)
        
        // MARK: - Presenter
        container.register(MetalPresenter.self) { r in
            MetalPresenter()
        }
        .initCompleted { r, presenter in
            presenter.view = r.resolve(MetalViewInput.self)
            presenter.interactor = r.resolve(MetalInteractorInput.self)
            presenter.router = r.resolve(MetalRouterInput.self)
        }
        .implements(MetalViewOutput.self, MetalInteractorOutput.self)
        
        // MARK: - Router
        container.register(MetalRouter.self) { r in
            MetalRouter()
        }
        .initCompleted({ r, router in
            router.view = r.resolve(MetalViewInput.self)
        })
        .implements(MetalRouterInput.self)
        
    }
}
