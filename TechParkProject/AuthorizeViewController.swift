//
//  AuthorizeViewController.swift
//  TechParkProject
//
//  Created by Boss on 18/04/2018.
//  Copyright © 2018 Boss. All rights reserved.
//
import Foundation
import UIKit
import FirebaseAuth

class AuthorizeViewController: UIViewController {
    
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    //@IBOutlet weak var usernameField: UITextField!
    
  
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor(patternImage:UIImage(named:"background1.png")!) //background color 
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func finishRegistration(_ sender: Any) {
        guard let username = usernameField.text else {return}
        guard let password = passwordField.text else {return}
        guard let email = emailField.text else {return}
        
        navigationController?.popViewController(animated: true)
        Auth.auth().createUser(withEmail: email, password: password){user, error in
            if error == nil && user != nil {
                print("User created!")
            } else {
                print("error! \(error!.localizedDescription)")
            }
        }
        //FirebaseApp.configure()
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
