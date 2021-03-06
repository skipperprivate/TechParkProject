//
//  MainViewController.swift
//  TechParkProject
//
//  Created by Oleg on 18.05.2018.
//  Copyright © 2018 Boss. All rights reserved.
//

import UIKit
import FirebaseAuth

class MainViewController: UIViewController {
    @IBOutlet weak var Email1: UITextField!
    @IBOutlet weak var Password1: UITextField!
    @IBOutlet weak var Login: UIButton!
    
   // var activitiview:UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage:UIImage(named:"background1.png")!) //background color
        // Do any additional setup after loading the view.
        Login.addTarget(self, action: #selector(Log_In), for: .touchUpInside)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Log_In(_ sender: Any) {
        guard let password = Password1.text else {return}
        guard let email = Email1.text else {return}
        //activitiview.startAnimating()
        
        Auth.auth().signIn(withEmail: email, password: password) { user , error in
           if error == nil && user != nil {
            //if let user = Auth.auth().currentUser {
            //  self.performSegue(withIdentifier: "go_home", sender: self)
            self.dismiss(animated: false, completion: nil)
              print("Login!")
                self.performSegue(withIdentifier: "go_home", sender: self)
            
            
           // }
          
           } else {
            //self.ResetForm()
            self.ResetForm()
            }
        }
        
    }
    
    
    func ResetForm() {
        let alert = UIAlertController(title: "Error", message:"Email and password are incorrect", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title:"OK",style: UIAlertActionStyle.default, handler:nil))
        
        self.present(alert,animated:true,completion:nil)
    }
    
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if let user = Auth.auth().currentUser {
            self.performSegue(withIdentifier: "go_home", sender: self)
        }
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
