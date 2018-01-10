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
    
    init(){
        FirebaseApp.configure()
        ref = Database.database().reference()
        
        ref?.child("ios test").setValue("this is ios test")
    }
    


    

}
