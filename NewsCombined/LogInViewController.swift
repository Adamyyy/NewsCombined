//
//  LogInViewController.swift
//  Flash Chat
//
//  This is the view controller where users login


import UIKit
import Firebase

class LogInViewController: UIViewController {

    //Textfields 
    @IBOutlet var emailTextfield: UITextField!
    @IBOutlet var passwordTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

   
    @IBAction func logInPressed(_ sender: AnyObject) {

        
        //TODO: Log in the user
        FIRAuth.auth()?.signIn(withEmail: emailTextfield.text!, password: passwordTextfield.text!) { (user, error) in
            if error != nil {
                print(error)
            }
            else {
                print("Loged in")
                self.performSegue(withIdentifier: "goToChat", sender: self)
            }
        }

    }
    


    
}  
