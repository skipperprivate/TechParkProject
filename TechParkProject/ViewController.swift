//
//  ViewController.swift
//  TechParkProject
//
//  Created by Boss on 03/03/2018.
//  Copyright © 2018 Boss. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var _username: UITextField!
    @IBOutlet var _password: UITextField!
    @IBOutlet var WelcomeScreen: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func RegistrationButton(_ sender: Any) {
        
    }
    
    @IBAction func LoginButton(_ sender: Any) {
        
        let username = _username.text;
        let password = _password.text;
        
        if (username == "" || password == ""){
            return
        }
        
        DoLogin(username!, password!)
    }
    
    func DoLogin (_ user: String, _ password: String){
        
    }
    
}

