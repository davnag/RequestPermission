//
//  AuthorizationHandlerInterface.swift
//  SPRequestPermission
//
//  Created by David Nagy on 2017-03-02.
//  Copyright © 2017 Ivan Vorobei. All rights reserved.
//

import Foundation

typealias AuthorizationHandlerCompletionBlock = (Bool) -> Void

protocol AuthorizationHandlerInterface {
    
    func requestPermission(_ complectionHandler: @escaping AuthorizationHandlerCompletionBlock)
}
