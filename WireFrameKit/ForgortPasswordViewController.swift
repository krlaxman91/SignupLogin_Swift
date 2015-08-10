//
//  ForgortPasswordViewController.swift
//  WireFrameKit
//
//  Created by Laxman on 28/05/15.
//  Copyright (c) 2015 mac. All rights reserved.
//

import UIKit

class ForgortPasswordViewController: UIViewController  , UITextFieldDelegate
{

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
    self.title = "Reset Password"
    
       
        
        emailFeild.delegate = self
        
        
        emailFeild.returnKeyType = UIReturnKeyType.Go
       
        emailFeild.backgroundColor = UIColor.clearColor()
       
        emailFeild.layer.borderWidth = 1.0
        emailFeild.layer.borderColor = UIColor.whiteColor().CGColor
        emailFeild.layer.cornerRadius = 5.0
        
        
        emailFeild.attributedPlaceholder = NSAttributedString(string:"Enter email here",
            attributes:[NSForegroundColorAttributeName: UIColor.whiteColor()])
        
        
        emailFeild.keyboardType = UIKeyboardType.EmailAddress
        
        
        
        self.createViewForNavigation()
        
        
        emailFeild.textColor = UIColor.whiteColor()
        
     self.navigationController?.navigationBar.tintColor = UIColor.whiteColor()
        
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    @IBOutlet var emailFeild: UITextField!
    
    
  
    
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        view.endEditing(true)
        super.touchesBegan(touches as Set<NSObject>, withEvent: event)
    }
    
    
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        if textField == emailFeild
            
        {
            emailFeild.resignFirstResponder()
        }
        
        return true
    }
    
    
    func createViewForNavigation()
    {
        
        var navBar : UIView = UIView(frame: CGRectMake(0, 0, CGRectGetWidth(self.view.bounds), 64))
        navBar.backgroundColor = UIColor(red: 0.624 , green: 0.808 , blue: 0.796 , alpha: 1.0)
        self.view.addSubview(navBar)
    }
    

    @IBAction func cancelButtonAction(sender: AnyObject) {
        
        emailFeild.text = ""
        
    }
    
    
    
    @IBAction func ResetPassswordActionButton(sender: AnyObject) {
        
        
                let alert = UIAlertController(title: "Alert", message: "Password sent to your email Id.", preferredStyle: UIAlertControllerStyle.Alert)
                alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil))
                self.presentViewController(alert, animated: true, completion: nil)
        
    }
    
    
}
