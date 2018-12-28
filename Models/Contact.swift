//
//  Contact.swift
//  ScheduleApp
//
//  Created by Haroldo Leite on 28/12/18.
//  Copyright © 2018 Haroldo Leite. All rights reserved.
//

import UIKit

class Contact: NSObject {
    
    var name : String
    var email : String
    var phoneNumber : String
    
    init(name: String, email: String, phoneNumber: String) {
        self.name = name
        self.email = email
        self.phoneNumber = phoneNumber
    }
}
