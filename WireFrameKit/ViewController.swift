//
//  ViewController.swift
//  WireFrameKit
//
//  Created by Laxman on 15/05/15.
//  Copyright (c) 2015 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITextFieldDelegate {

    @IBOutlet var userName: UITextField!
    
    
    @IBOutlet var password: UITextField!
    
    
    @IBOutlet var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        userName.delegate = self
        password.delegate = self
        
        
        userName.returnKeyType = UIReturnKeyType.Next
        password.returnKeyType = UIReturnKeyType.Go
        
        //userName.placeholder = "Username"
        //password.placeholder = "Password"
        
        userName.backgroundColor = UIColor.clearColor()
        password.backgroundColor = UIColor.clearColor()
        
        userName.layer.borderWidth = 1.0
        userName.layer.borderColor = UIColor.whiteColor().CGColor
        userName.layer.cornerRadius = 5.0
        
        
        userName.attributedPlaceholder = NSAttributedString(string:"Username",
            attributes:[NSForegroundColorAttributeName: UIColor.whiteColor()])
        
        
        password.attributedPlaceholder = NSAttributedString(string:"Password",
            attributes:[NSForegroundColorAttributeName: UIColor.whiteColor()])
        

        
        password.layer.borderWidth = 1.0
        password.layer.borderColor = UIColor.whiteColor().CGColor
        password.layer.cornerRadius = 5.0
        
        password.secureTextEntry = true
        
        
        
        
        loginButton.layer.cornerRadius = 5.0
     
        self.navigationBarTransparent()
       
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: Selector("keyboardWillShow:"), name:UIKeyboardWillShowNotification, object: nil);
        NSNotificationCenter.defaultCenter().addObserver(self, selector: Selector("keyboardWillHide:"), name:UIKeyboardWillHideNotification, object: nil);

        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    func navigationBarTransparent()
    {
        let bar:UINavigationBar! =  self.navigationController?.navigationBar
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), forBarMetrics: UIBarMetrics.Default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.translucent = true
    }
    
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        view.endEditing(true)
        super.touchesBegan(touches as Set<NSObject>, withEvent: event)
    }
    
    
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        if textField == userName
            
        {
            textField.resignFirstResponder()
            
                       
            password.becomeFirstResponder()
        }
        else
        {
            password.resignFirstResponder()
        }
        return true
    }
    
    
    
    
    
    
    
    @IBAction func loginButtonAction(sender: AnyObject) {
    }

    
    
    
    func keyboardWillShow(sender: NSNotification) {
        self.view.frame.origin.y -= 70
    }
    func keyboardWillHide(sender: NSNotification) {
        self.view.frame.origin.y += 70
    }
    
    
    @IBAction func signUpAction(sender: AnyObject) {
        
        
        let signUpViewController = self.storyboard?.instantiateViewControllerWithIdentifier("SignUpViewController") as! SignUpViewController
        self.navigationController?.pushViewController(signUpViewController, animated: true)
        
    }
 
    
    
    
    @IBAction func ForgotPassword(sender: AnyObject) {
        
        let forgortPasswordViewController = self.storyboard?.instantiateViewControllerWithIdentifier("ForgortPasswordViewController") as! ForgortPasswordViewController
        self.navigationController?.pushViewController(forgortPasswordViewController, animated: true)
        
        
        
        
    }
    
    
    
    
}

