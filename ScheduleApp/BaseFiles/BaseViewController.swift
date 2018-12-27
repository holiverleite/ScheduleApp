//
//  BaseViewController.swift
//  ScheduleApp
//
//  Created by Haroldo Leite on 21/12/18.
//  Copyright © 2018 Haroldo Leite. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        ConsoleLogger.log("\(self)")
        
        

    }
    
    // MARK: - Navigation Title
    func setNavigationTitle(_ title: String) {
        self.navigationItem.title = title
    }
}
