//
//  SignOutController.swift
//  HM14(shio andghuladze)
//
//  Created by IMAC on 09.07.22.
//

import UIKit

class SignOutController: UIViewController {
    
    var onSignOut: (() -> Void)?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func approval(_ sender: Any) {
        dismiss(animated: true, completion: onSignOut)
    }
    
    @IBAction func denial(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
