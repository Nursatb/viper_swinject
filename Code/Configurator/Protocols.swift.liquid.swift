//
//  {{ module_info.file_name }}
//  {{ module_info.project_name }}
//
//  Created by {{ developer.name }} on {{ date }}.
//  Copyright © {{ year }} {{ developer.name }}. All rights reserved.
//

protocol {{ module_info.name }}ViewInput: AnyObject {
    func setupInitialState()
}

protocol {{ module_info.name }}ViewOutput: AnyObject {
    func viewIsReady()
}

protocol {{ module_info.name }}InteractorInput: AnyObject {

}

protocol {{ module_info.name }}InteractorOutput: AnyObject {

}

protocol {{ module_info.name }}RouterInput: AnyObject {

}

