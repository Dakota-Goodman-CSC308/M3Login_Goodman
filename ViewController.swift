//
//  ViewController.swift
//  M3Login_Goodman
//
//  Created by Goodman, Dakota K. on 2/5/26.
//

import UIKit

class ViewController: UIViewController {

    //Logical NOT: !expr
    //Forced Unwrapping: optional expr!
    //(IUO):type!
    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var pwTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func loginButton(_ sender: Any){
        
        guard let id = idTextField.text, !id.isEmpty else{
            return
        }
        
        guard let pw = pwTextField.text, !pw.isEmpty else{
            return
        }
        //id: dakota, pw: 1234
        
        func showAlert(message: String){
            let alert = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(okAction)
            present(alert, animated: true, completion: nil)
        }
            
            resultLabel.text = (id == "dakota" && pw == "1234") ? "Login Success!" : "Login Fail!"
        }
        
        
        
        override func viewDidLoad() {
            super.viewDidLoad()
        }
    
    overridefunc viewDidAppear(_ animated: bool){
        super.viewDidAppear(animated)
        idTextField.becomeFirstResponder()
    }
    }
