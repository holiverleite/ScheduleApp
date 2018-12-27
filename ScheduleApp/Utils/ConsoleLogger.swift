//
//  ConsoleLogger.swift
//  ScheduleApp
//
//  Created by Haroldo Leite on 21/12/18.
//  Copyright © 2018 Haroldo Leite. All rights reserved.
//

import UIKit

class ConsoleLogger {

    static func log(_ output: String) {
        #if DEBUG || PRINT_LOG
            print(output)
        #endif
    }
}
