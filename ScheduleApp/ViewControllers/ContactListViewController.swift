//
//  ViewController.swift
//  ScheduleApp
//
//  Created by Haroldo Leite on 21/12/18.
//  Copyright © 2018 Haroldo Leite. All rights reserved.
//

import UIKit

class ContactListViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Navigation Bar
        self.setNavigationTitle(StringConstants.ContactListTitle)
        let addContact = UIBarButtonItem(image: ImageConstants.AddContactButton,
                                         style: .plain,
                                         target: self,
                                         action: #selector(contactCreator))
        self.navigationItem.rightBarButtonItem = addContact
    }
    
    // MARK: - Actions
    @objc func contactCreator() {
        
        let storyboard = UIStoryboard(name: "CreateContact", bundle: nil)
        if let vc = storyboard.instantiateViewController(withIdentifier: "CreateContactViewController") as? CreateContactViewController {
            self.navigationController?.pushViewController(vc, animated: true)
        }
        
    }


}

