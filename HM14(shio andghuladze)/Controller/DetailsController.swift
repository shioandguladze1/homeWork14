//
//  DetailsController.swift
//  HM14(shio andghuladze)
//
//  Created by IMAC on 09.07.22.
//

import UIKit

class DetailsController: UIViewController {
    
    
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var userName: String?
    var email: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameLabel.text = userName
        emailLabel.text = email
    }

    @IBAction func signOut(_ sender: Any) {
        showScreenModally(destinationName: "SignOutController"){(c: SignOutController) in
            c.onSignOut = {
                self.navigateWithMainStoryBoard(destinationName: "LoginController"){(c: LoginController) in}
            }
        }
    }
}
