//
//  LoginController.swift
//  HM14(shio andghuladze)
//
//  Created by IMAC on 09.07.22.
//

import UIKit

class LoginController: UIViewController {
    
    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    var registeredUserName: String?
    var registeredPassword: String?
    var registeredEmail: String?

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func signIn(_ sender: Any) {
        if registeredPassword != nil && registeredUserName != nil && !userNameTF.isTextNilOrEmpty() && !passwordTF.isTextNilOrEmpty(){
            
            if registeredPassword == String(passwordTF.text!) && registeredUserName == String(userNameTF.text!){
                
                navigateWithMainStoryBoard(destinationName: "DetailsController"){(c: DetailsController) in
                    c.userName = self.registeredUserName
                    c.email = self.registeredEmail
                }
                
            }else{
                
                showAlert(title: "Error", message: "Incorrect credentials"){alert in
                    alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { (action: UIAlertAction!) in
                        alert.dismiss(animated: true, completion: nil)
                      }))
                }

            }
            
        }
    }
    
}
