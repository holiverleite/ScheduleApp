//
//  StringExtension.swift
//  ScheduleApp
//
//  Created by Haroldo Leite on 21/12/18.
//  Copyright © 2018 Haroldo Leite. All rights reserved.
//

import Foundation
import UIKit

extension String {
    static func localize(_ string: String) -> String {
        return NSLocalizedString(string, comment: "")
    }
}
