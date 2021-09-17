//
//  ViewController2.swift
//  Ass03
//
//  Created by DuongVH on 06/05/2021.
//

import UIKit

class ViewController2: UIViewController {
    @IBOutlet weak var firstNameView: UIView!
    @IBOutlet weak var lastNameView: UIView!
    @IBOutlet weak var passwordView: UIView!
    @IBOutlet weak var confirmView: UIView!
    @IBOutlet weak var checkBoxButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var accountView: UIView!
    
    var state = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        layoutConfig()
    }
    
    @IBAction func checkBoxButton(_ sender: UIButton) {
        stateControl()
    }
    @IBAction func coverButton(_ sender: UIButton) {
        stateControl()
    }
    private func stateControl(){
        if state == false{
            checkBoxButton.setBackgroundImage(UIImage(named: "uncheck"), for: .normal)
        }else{
            checkBoxButton.setBackgroundImage(UIImage(named: "checked"), for: .normal)
        }
        state = !state
    }
    private func layoutConfig(){
        firstNameView.layer.cornerRadius = 25
        firstNameView.layer.borderColor = #colorLiteral(red: 0.9450980392, green: 0.4823529412, blue: 0.1176470588, alpha: 1)
        firstNameView.layer.borderWidth = 1
        
        lastNameView.layer.cornerRadius = 25
        lastNameView.layer.borderColor = #colorLiteral(red: 0.9450980392, green: 0.4823529412, blue: 0.1176470588, alpha: 1)
        lastNameView.layer.borderWidth = 1
        
        accountView.layer.cornerRadius = 25
        accountView.layer.borderColor = #colorLiteral(red: 0.9450980392, green: 0.4823529412, blue: 0.1176470588, alpha: 1)
        accountView.layer.borderWidth = 1
        
        passwordView.layer.cornerRadius = 25
        passwordView.layer.borderColor = #colorLiteral(red: 0.9450980392, green: 0.4823529412, blue: 0.1176470588, alpha: 1)
        passwordView.layer.borderWidth = 1
        
        confirmView.layer.cornerRadius = 25
        confirmView.layer.borderColor = #colorLiteral(red: 0.9450980392, green: 0.4823529412, blue: 0.1176470588, alpha: 1)
        confirmView.layer.borderWidth = 1
        
        signUpButton.layer.cornerRadius = 25
    }
}
