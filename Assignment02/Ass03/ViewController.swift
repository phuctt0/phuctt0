//
//  ViewController.swift
//  Ass03
//
//  Created by DuongVH on 06/05/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var passwordView: UIView!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var usenameView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
       layoutConfig()
    }
    private func layoutConfig(){
        loginButton.layer.cornerRadius = loginButton.bounds.height/2
        
        usenameView.layer.cornerRadius = 25
        usenameView.layer.borderColor = #colorLiteral(red: 0.9450980392, green: 0.4823529412, blue: 0.1176470588, alpha: 1)
        usenameView?.layer.borderWidth = 1
        
        passwordView.layer.cornerRadius = 25
        passwordView.layer.borderColor = #colorLiteral(red: 0.9450980392, green: 0.4823529412, blue: 0.1176470588, alpha: 1)
        passwordView.layer.borderWidth = 1
    }

}
extension UITextField{
    @IBInspectable var placeHolderColor: UIColor? {
        get {
            return self.placeHolderColor
        }
        set {
            self.attributedPlaceholder = NSAttributedString(string:self.placeholder != nil ? self.placeholder! : "", attributes:[NSAttributedString.Key.foregroundColor: newValue!])
        }
    }
}
