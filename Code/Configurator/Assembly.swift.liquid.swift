//
//  {{ module_info.file_name }}
//  {{ module_info.project_name }}
//
//  Created by {{ developer.name }} on {{ date }}.
//  Copyright © {{ year }} {{ developer.name }}. All rights reserved.
//

import Swinject

class {{ module_info.name }}Assembly: Assembly {
    
    static let shared = Assembler([{{ module_info.name }}Assembly()])
    
    func assemble(container: Container) {
        // MARK: - View
        container.register({{ module_info.name }}Coordinator.self) { resolver in
            {{ module_info.name }}Coordinator()
        }
        
        // MARK: - View
        container.register({{ module_info.name }}ViewController.self) { resolver in
            {{ module_info.name }}ViewController()
        }
        .initCompleted({ resolver, vc in
            vc.presenter = resolver.resolve({{ module_info.name }}ViewOutput.self)
        })
        .implements({{ module_info.name }}ViewInput.self)
        
        // MARK: - Interactor
        container.register({{ module_info.name }}Interactor.self) { resolver in
            {{ module_info.name }}Interactor()
        }
        .initCompleted({ resolver, interactor in
            interactor.presenter = resolver.resolve({{ module_info.name }}InteractorOutput.self)
        })
        .implements({{ module_info.name }}InteractorInput.self)
        
        // MARK: - Presenter
        container.register({{ module_info.name }}Presenter.self) { resolver in
            {{ module_info.name }}Presenter()
        }
        .initCompleted { resolver, presenter in
            presenter.view = resolver.resolve({{ module_info.name }}ViewInput.self)
            presenter.interactor = resolver.resolve({{ module_info.name }}InteractorInput.self)
            presenter.router = resolver.resolve({{ module_info.name }}RouterInput.self)
        }
        .implements({{ module_info.name }}ViewOutput.self, {{ module_info.name }}InteractorOutput.self)
        
        // MARK: - Router
        container.register({{ module_info.name }}Router.self) { resolver in
            {{ module_info.name }}Router()
        }
        .initCompleted({ resolver, router in
            router.view = resolver.resolve({{ module_info.name }}ViewInput.self)
        })
        .implements({{ module_info.name }}RouterInput.self)
        
    }
}
