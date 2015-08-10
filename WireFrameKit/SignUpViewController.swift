//
//  SignUpViewController.swift
//  WireFrameKit
//
//  Created by Laxman on 15/05/15.
//  Copyright (c) 2015 mac. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController  , UITextFieldDelegate {

    @IBOutlet var username: UITextField!
    @IBOutlet var signUpButton: UIButton!
    
    
    @IBOutlet var emailButton: UITextField!
    
    
    @IBOutlet var password: UITextField!
    
    @IBOutlet var confirmPassword: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.createViewForNavigation()
    
        signUpButton.layer.cornerRadius = 5.0
        
        
        username.placeholder = "Username"
        
        emailButton.placeholder = "Email Address"
        
        password.placeholder = "Password"
        
        confirmPassword.placeholder = "Confirm Password"
        
        username.delegate = self
        emailButton.delegate = self
        password.delegate = self
        confirmPassword.delegate = self
        
        emailButton.keyboardType = UIKeyboardType.EmailAddress
        password.secureTextEntry = true
        confirmPassword.secureTextEntry = true
        
        username.returnKeyType = UIReturnKeyType.Next
        emailButton.returnKeyType = UIReturnKeyType.Next
        password.returnKeyType = UIReturnKeyType.Next
        confirmPassword.returnKeyType = UIReturnKeyType.Go
        
        self.title = "Create Account"
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    
        
    
    }
    
    func createViewForNavigation()
    {
        
        var navBar : UIView = UIView(frame: CGRectMake(0, 0, CGRectGetWidth(self.view.bounds), 64))
        navBar.backgroundColor = UIColor(red: 0.624 , green: 0.808 , blue: 0.796 , alpha: 1.0)
        self.view.addSubview(navBar)
    }
    
    
    @IBAction func signUpAction(sender: AnyObject) {
    }
    
    
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        view.endEditing(true)
        super.touchesBegan(touches as Set<NSObject>, withEvent: event)
    }
    
    
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        if textField == username
            
        {
            textField.resignFirstResponder()
            emailButton.becomeFirstResponder()
        }
        else if textField == emailButton
        {
            emailButton.resignFirstResponder()
            password.becomeFirstResponder()
        }
        
        else if textField == password
        {
        
            password.resignFirstResponder()
            confirmPassword.becomeFirstResponder()
        }

        else
        {
        confirmPassword.resignFirstResponder()
        }
        return true
    }
    
    

    
    
    
    
    
    
    
    
    
    
}