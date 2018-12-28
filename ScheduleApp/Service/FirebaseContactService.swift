//
//  FirebaseContactService.swift
//  ScheduleApp
//
//  Created by Haroldo Leite on 28/12/18.
//  Copyright © 2018 Haroldo Leite. All rights reserved.
//

import Firebase

class FirebaseContactService {
    
    private static var sharedInstance : FirebaseContactService?
    
    private init() {}
    
    deinit {
        ConsoleLogger.log("Deiniting Firebase Contact Service")
    }
    
    static func getSharedInstance() -> FirebaseContactService {
        guard let checkedSharedInstance = self.sharedInstance else {
            let newInstance = FirebaseContactService()
            self.sharedInstance = newInstance
            
            return newInstance
        }
        
        return checkedSharedInstance
    }
    
    static func shutdownService() {
        self.sharedInstance = nil
    }
    
    func createOrUpdateContact(contact: Contact) {
        var dict : [String:Any] = [:]
        dict["name"] = contact.name
        dict["email"] = contact.email
        dict["phoneNumber"] = contact.phoneNumber
        
        let ref: DatabaseReference = Database.database().reference().childByAutoId()
        ref.setValue(dict)
    }
}
