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
        let lines = invocation.buffer.lines
        let selectedRange = invocation.buffer.selections
        
        let textRange: XCSourceTextRange? = selectedRange[0] as? XCSourceTextRange
        if let txtRng = textRange {

            var startLine: String = lines[txtRng.start.line] as! String
            startLine.insert("*", at: startLine.startIndex)
            startLine.insert("/", at: startLine.startIndex)
            
            lines[txtRng.start.line] = startLine
            
            var endLine: String = lines[txtRng.end.line] as! String
            endLine.insert("*", at: endLine.endIndex)
            endLine.insert("/", at: endLine.endIndex)
            
            lines[txtRng.end.line] = endLine
        }
        
        completionHandler(nil)
    }
    
}
