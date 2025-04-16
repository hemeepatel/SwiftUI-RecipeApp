//
//  LoginPageModel.swift
//  SpoonfulTest
//
//  Created by Mya Amaya on 4/2/25.
//

import SwiftUI

class LoginPageModel: ObservableObject {
    
    //Login Properties...
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var showPassword: Bool = false
    
    //Register Properties
    @Published var registerUser: Bool = false
    @Published var firstName: String = ""
    @Published var lastName: String = ""
    @Published var reenterPassword: String = ""
    @Published var showreenterPassword: Bool = false
    
    //Login Call
    func Login(){
        //Do Action Here
    }
    
    func Register(){
        //Do Action Here
    }
    
    func ForgotPassword(){
        //Do Something Here
    }
}


