//
//  UIExtensions.swift
//  HM14(shio andghuladze)
//
//  Created by IMAC on 09.07.22.
//

import Foundation
import UIKit

extension UITextField{
    
    func isTextNilOrEmpty()-> Bool{
        return self.text == nil || String(self.text!) == ""
    }
    
}

extension UIViewController{
    
    // ეს ფუნქცია სხვანაირად ვერ აღიწერებოდა, რეთარნ ტაიპი უნდა ჰქონოდა T ტიპის ან პარამეტრი ერთ-ერთი თორემ ერორს მაძლევდა
    func navigateWithMainStoryBoard<T: UIViewController>(destinationName: String, destinationModifier: ((T) -> Void)? = nil, animated: Bool = true){
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        if let controller = storyBoard.instantiateViewController(withIdentifier: destinationName) as? T{
            destinationModifier?(controller)
            navigationController?.pushViewController(controller, animated: animated)
        }
    }
    
    func showScreenModally<T: UIViewController>(destinationName: String, destinationModifier: ((T) -> Void)? = nil, animated: Bool = true){
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        if let controller = storyBoard.instantiateViewController(withIdentifier: destinationName) as? T{
            destinationModifier?(controller)
            present(controller, animated: animated, completion: nil)
        }
    }
    
    func showAlert(title: String, message: String, modifier: (UIAlertController)-> Void){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        modifier(alert)
        present(alert, animated: true, completion: nil)
    }
    
}
