//

//  ModelFirebase.swift

//  SqliteDemo_6_12

//

//  Created by Eliav Menachi on 13/12/2017.

//  Copyright © 2017 menachi. All rights reserved.

//



import Foundation

import Firebase

import FirebaseDatabase





class ModelFirebase{
    
    let ref:DatabaseReference?
    
    var results : String = ""
    
    
    
    init(){
        
        FirebaseApp.configure()
        
        ref = Database.database().reference()
        
        
        
        ref?.child("ios test").setValue("this is ios test")
        
    }
    
    
    
    
    
    func RegisterUser(Email : String , Password : String) ->String {
        
        self.results = ""
        
        
        
        
        
        Auth.auth().createUser(withEmail: Email, password: Password, completion: { (user, error) in
            
            if error != nil {
                
                
                
                self.results = "Email/Password error"
                
                
                
            }
            
            
            
            
            
        })
        
        return self.results
        
    }
    
    
    
    
    
}
