//
//  Users.swift
//  QuizMaker
//
//  Created by Lainel John Dela Cruz on 07/11/2018.
//  Copyright © 2018 Lainel John Dela Cruz. All rights reserved.
//

import Foundation

class Users{
    var id,email,firstname, lastname:String;
    
    init(){
        self.id="";
        self.email="";
        self.firstname="";
        self.lastname="";
    }
    convenience init(id:String, email:String){
        self.init();
        self.set(id: id, email: email);
    }
    
    func set(id:String, email:String){
        self.id=id;
        self.email=email;
    }
    
}
