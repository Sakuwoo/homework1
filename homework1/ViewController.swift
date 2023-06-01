//
//  ViewController.swift
//  homework1
//
//  Created by Sevara on 6/1/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailTF: UITextField!
    
    @IBOutlet weak var passwordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func rememberButtonPressed(_ sender: UIButton) {
        if sender.imageView?.image == UIImage(systemName: "square") {
            sender.setImage(UIImage(systemName: "checkmark.rectangle.portrait"), for: .normal)
        } else {
            sender.setImage(UIImage(systemName: "square"), for: .normal)
        }
    }
    @IBAction func eyeButtonPressed(_ sender: UIButton) {
        if passwordTF.isSecureTextEntry == true {
            passwordTF.isSecureTextEntry = false
        } else {
            passwordTF.isSecureTextEntry = true
        }
    }
    
    @IBAction func signInButtonTapped(_ sender: UIButton) {
        let email = checkEmptysTF(textField: emailTF)
        let pass = checkEmptysTF(textField: passwordTF)
        if email && pass {
            performSegue(withIdentifier: "goToSuccessVc", sender: self)
        }
    }
    
    func checkEmptysTF(textField: UITextField) -> Bool {
        if textField.text?.isEmpty == false {
            return true
        } else {
            textField.placeholder = "Заполните ПЖ"
            textField.layer.borderWidth = 1
            textField.layer.borderColor = UIColor.red.cgColor
            return false
        }
    }
}

