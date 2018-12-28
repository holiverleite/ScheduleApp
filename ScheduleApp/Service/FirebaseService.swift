//
//  FirebaseService.swift
//  ScheduleApp
//
//  Created by Haroldo Leite on 28/12/18.
//  Copyright © 2018 Haroldo Leite. All rights reserved.
//

import Foundation

class FirebaseService {
    
    private static var sharedInstance: FirebaseService? = nil
    
    // MARK: - Initializations Methods
    private init() {}
    
    deinit {
        ConsoleLogger.log("Definiting Firebase service")
    }
    
    // Firebase Singleton
    static func getSharedInstance() -> FirebaseService {
        guard let checkedSharedInstance = self.sharedInstance else {
            let newInstance = FirebaseService()
            self.sharedInstance = newInstance
            
            return newInstance
        }
        
        return checkedSharedInstance
    }
    
    static func shutdownService() {
        self.sharedInstance = nil
    }
    
    // MARK: - Services
    func createOrUpdateContact(contact: Contact) {
        FirebaseContactService.getSharedInstance().createOrUpdateContact(contact: contact)
    }
    
}
