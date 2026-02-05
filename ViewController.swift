//
//  ViewController.swift
//  M3Login_Goodman
//
//  Created by Goodman, Dakota K. on 2/5/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var pwTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func loginButton(_ sender: Any){
        let id = idTextField.text!
        let pw = pwTextField.text!
        //id: dakota, pw: 1234
    
    //        if id.count == 0 || pw.count == 0{
    //        if id.isEmpty || pw.isEmpty{
    //            resultLabel.text = "Please input ID and PW!"
    //            return //early exit
    //        }
            //guard condition else{
            //    return //early exit
            //}
            //_____
            guard id.isEmpty || pw.isEmpty else{
                resultLabel.text = "Please input ID and PW!"
                return
            }
            
    //        if id == "dakota" && pw == "1234"{
    //            resultLabel.text = "Login Success!"
    //        }else{
    //            resultLabel.text = "Login Fail!"
    //        }
            resultLabel.text = (id == "dakota" && pw == "1234") ? "Login Success!" : "Login Fail!"
        }
        
        
        
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
        }

    }
