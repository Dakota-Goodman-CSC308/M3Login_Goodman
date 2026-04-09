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
    @IBOutlet weak var loginButtonOutlet: UIButton!
    
    @IBAction func loginButton(_ sender: Any){
        
        guard let id = idTextField.text, !id.isEmpty else{
            showAlert(message: "Enter your ID.")
            return
        }
        
        guard let pw = pwTextField.text, !pw.isEmpty else{
            showAlert(message: "Enter your password.")
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
    
    override func viewDidAppear(_ animated: Bool){
        super.viewDidAppear(animated)
        idTextField.becomeFirstResponder()
    }
}

extension ViewController: UITextFieldDelegate{
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        // print(#function, textField.text)
        var finalID = idTextField.text ?? ""
        var finalPassword = pwTextField.text ?? ""
        
        if textField == idTextField{
            guard let range = Range(range, in: finalID) else{
                return true
            }
            finalID = finalID.replacingCharacters(in: range, with: string)
        } else if textField == pwTextField {
            guard let range = Range(range, in: finalPassword) else{
                return true
            }
            finalPassword = finalPassword.replacingCharacters(in: range, with: string)
        }
        loginButtonOutlet.isEnabled = !finalID.isEmpty && !finalPassword.isEmpty
        return true
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if textField == idTextField{
           let cnt = textField.text?.count ?? 0
            let isValidID = (6 ... 12).contains(cnt)
            textField.layer.borderWidth = isValidID ? 0 : 2
            textField.layer.borderColor = isValidID ? nil : UIColor.red.cgColor
            textField.layer.cornerRadius = isValidID ? 0 : 8
            textField.tintColor = isValidID ? view.tintColor : .red
            return isValidID
        }
        return true
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField{
        case idTextField:
            pwTextField.becomeFirstResponder()
        case pwTextField:
            loginButton(self)
        default:
            break
        }
        print(#function, textField)
        return false
    }
}
