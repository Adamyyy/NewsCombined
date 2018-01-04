//
//  LogInViewController.swift
//  Flash Chat
//
//  This is the view controller where users login


import UIKit
import Firebase

class LogInViewController: UIViewController {
    

    @IBOutlet weak var errorText: UILabel!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
   
    func badinput(error : String)
    {
        errorText.text = error
        
    }
    
    @IBAction func registerButtonPressed(_ sender: Any) {
    }
    
        
        
    }
    
    
    
    


