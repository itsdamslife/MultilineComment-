//
//  SourceEditorCommand.swift
//  MultilineCommentExt
//
//  Created by Damodar Shenoy on 7/25/17.
//  Copyright © 2017 itsdamslife. All rights reserved.
//

import Foundation
import XcodeKit

class SourceEditorCommand: NSObject, XCSourceEditorCommand {
    
    func perform(with invocation: XCSourceEditorCommandInvocation, completionHandler: @escaping (Error?) -> Void ) -> Void {
        
        completionHandler(nil)
    }
    
}
