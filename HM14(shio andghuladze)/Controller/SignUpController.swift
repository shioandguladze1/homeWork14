//
//  SignUpController.swift
//  HM14(shio andghuladze)
//
//  Created by IMAC on 09.07.22.
//

import UIKit

class SignUpController: UIViewController {

    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var repeatPasswordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func signUp(_ sender: UIButton) {
        if !userNameTF.isTextNilOrEmpty() && !emailTF.isTextNilOrEmpty() && !passwordTF.isTextNilOrEmpty() && !repeatPasswordTF.isTextNilOrEmpty(){
            
            if passwordTF.text != repeatPasswordTF.text{
                showAlert(title: "Error", message: "Passwords do not match"){alert in
                    alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { (action: UIAlertAction!) in
                        alert.dismiss(animated: true, completion: nil)
                      }))
                }
            }else if !String(passwordTF.text!).isSecure(preferredCount: 8){
                showAlert(title: "Error", message: "This password is not secure"){alert in
                    alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { (action: UIAlertAction!) in
                        alert.dismiss(animated: true, completion: nil)
                      }))
                }
            }else{
                navigateWithMainStoryBoard(destinationName: "LoginController"){(c: LoginController) in
                    c.registeredUserName = String(self.userNameTF.text!)
                    c.registeredPassword = String(self.passwordTF.text!)
                    c.registeredEmail = String(self.emailTF.text!)
                }
            }
        }
        
    }
    
}
