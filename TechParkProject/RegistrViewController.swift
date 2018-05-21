//
//  RegistrViewController.swift
//  TechParkProject
//
//  Created by Oleg on 18.05.2018.
//  Copyright © 2018 Boss. All rights reserved.
//

import UIKit
import FirebaseAuth

class RegistrViewController: UIViewController {

    @IBOutlet weak var EmailField: UITextField!
    @IBOutlet weak var NickField: UITextField!
    @IBOutlet weak var Pass: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor(patternImage:UIImage(named:"background1.png")!) //background color
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Authorize(_ sender: Any) {
        guard let nick = NickField.text else {return}
        guard let password = Pass.text else {return}
        guard let email = EmailField.text else {return}
        
        navigationController?.popViewController(animated: true)
        Auth.auth().createUser(withEmail: email, password: password){user, error in
            if error == nil && user != nil {
                print("User created!")
            } else {
                print("error! \(error!.localizedDescription)")
            }
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
