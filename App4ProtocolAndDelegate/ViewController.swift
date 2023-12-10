//
//  ViewController.swift
//  App4ProtocolAndDelegate
//
//  Created by rongbaobao888 on 12/9/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, SendNameAndPhoneNumber {
    var names: [String] = [String]()
    var phoneNumbers: [String] = [String]()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "next" {
            let getNameAndPhoneNumberViewController = segue.destination as! GetNameAndPhoneNumberViewController
            getNameAndPhoneNumberViewController.delegate = self
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "nameAndPhoneNumberCell", for: indexPath)
        cell.textLabel?.text = "Name: \(names[indexPath.row])      PhoneNumber: \(phoneNumbers[indexPath.row])"
        return cell
    }
    
    func sendNameAndPhoneNumber(name: String, phoneNumber: String) {
        names.append(name)
        phoneNumbers.append(phoneNumber)
        
        tableView.reloadData()
    }
}

