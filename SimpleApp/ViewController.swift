//
//  ViewController.swift
//  SimpleApp
//
//  Created by Mohsin on 26/06/2015.
//  Copyright (c) 2015 PanaCloud. All rights reserved.
//

import UIKit
import TwitterKit


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        
//        let logInButton = TWTRLogInButton(logInCompletion:
//            { (session, error) in
//                if (session != nil) {
//                    println("signed in as \(session.userName)");
//                } else {
//                    println("error: \(error.localizedDescription)");
//                }
//        })
//        logInButton.center = self.view.center
//        self.view.addSubview(logInButton)
        

    
        let logInButton = TWTRLogInButton(logInCompletion: {
            (session: TWTRSession!, error: NSError!) in
            // play with Twitter session
        })
        logInButton.center = self.view.center
        self.view.addSubview(logInButton)

        
        Twitter.sharedInstance().logInWithCompletion {
            (session, error) -> Void in
            if (session != nil) {
                
                println("My UID is :\(session.userName)");
            } else {
                println("error: \(error.localizedDescription)");
            }
        }
        
        
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    
}

