//
//  GetNameAndPhoneNumberViewController.swift
//  App4ProtocolAndDelegate
//
//  Created by rongbaobao888 on 12/9/23.
//

import UIKit

class GetNameAndPhoneNumberViewController: UIViewController {

    weak var delegate: SendNameAndPhoneNumber? = nil
    
    @IBOutlet weak var name: UITextField!
    
    @IBOutlet weak var phoneNumber: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func addNameAndPhoneNumber(_ sender: UIButton) {
        guard let name = name.text else { return }
        guard let phoneNumber = phoneNumber.text else { return }
        self.delegate?.sendNameAndPhoneNumber(name: name, phoneNumber: phoneNumber)
        self.navigationController?.popViewController(animated: true)
    }
}
