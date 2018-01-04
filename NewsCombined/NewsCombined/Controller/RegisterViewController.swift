//
//  RegisterViewController.swift
//  Flash Chat
//
//  This is the View Controller which registers new users with Firebase
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {
    

    @IBOutlet weak var errorTextRegis: UILabel!
    @IBOutlet weak var emailTextFieldRegis: UITextField!
    @IBOutlet weak var passwordTextFieldRegis: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func badinput(error : String)
    {
        errorTextRegis.text = error
        
    }
    
    @IBAction func registerButtonPressed(_ sender: Any) {
        
        FIRAuth.auth()?.createUser(withEmail: emailTextFieldRegis.text!, password: passwordTextFieldRegis.text!, completion: { (user, error) in
            if error != nil {
                self.badinput(error : "Invalid Email input")
                
            }
            else {
                print("Registration is good")
                
                //self.performSegue(withIdentifier: "goToChat", sender: self)
                
            }
        })
        

        
    }
    
    
    
}

