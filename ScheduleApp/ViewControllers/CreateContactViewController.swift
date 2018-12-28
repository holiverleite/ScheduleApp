//
//  CreateContactViewController.swift
//  ScheduleApp
//
//  Created by Haroldo Leite on 21/12/18.
//  Copyright © 2018 Haroldo Leite. All rights reserved.
//

import UIKit

class CreateContactViewController: BaseViewController {

    // MARK: - IBOutlet
    @IBOutlet weak var finishButton: UIButton! {
        didSet {
            self.finishButton.setTitle("Save", for: .normal)
            self.finishButton.isEnabled = false
            self.finishButton.backgroundColor = UIColor.blueTranslucentCustom
            self.finishButton.tintColor = UIColor.white
        }
    }
    
    @IBOutlet weak var nameTextField: UITextField! {
        didSet {
            self.nameTextField.placeholder = "Name"
            self.nameTextField.delegate = self
        }
    }
    
    @IBOutlet weak var emailTextField: UITextField! {
        didSet {
            self.emailTextField.placeholder = "Email"
            self.emailTextField.delegate = self
        }
    }
    
    @IBOutlet weak var phoneNumberTextField: UITextField! {
        didSet {
            self.phoneNumberTextField.placeholder = "Phone"
            self.phoneNumberTextField.delegate = self
        }
    }
    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setNavigationTitle(StringConstants.CreateContact)
        
        self.finishButton.addTarget(self, action: #selector(didTapFinishButton), for: .touchUpInside)
    }
    
    // MARK: - Methods
    private func validateFields () {
        guard let name = self.nameTextField.text, let email = self.emailTextField.text, let phone = self.phoneNumberTextField.text else {
            return
        }
        
        if !name.isEmpty && !email.isEmpty && !phone.isEmpty {
            self.finishButton.isEnabled = true
            self.finishButton.backgroundColor = UIColor.blueCustom
        } else {
            self.finishButton.isEnabled = false
        }
    }
    
    // MARK: - Action Button
    @objc private func didTapFinishButton() {
        
        guard let name = self.nameTextField.text, let email = self.emailTextField.text, let phoneNumber = self.phoneNumberTextField.text else  {
            return
        }
        let contact = Contact(name: name, email: email, phoneNumber: phoneNumber)
        
        FirebaseService.getSharedInstance().createOrUpdateContact(contact: contact)
        // Salvar no firebase
        // Pegar notificacao
        // Salvar coredata
    }
}


// MARK: - Extensions
extension CreateContactViewController : UITextFieldDelegate {
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        self.validateFields()
        
        return true
    }
}
