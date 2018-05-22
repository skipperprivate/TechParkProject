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
    @IBOutlet weak var CancelBut: UIBarButtonItem!
    
    @IBAction func backToRoot(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
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
        
        //navigationController?.popViewController(animated: true)
        Auth.auth().createUser(withEmail: email, password: password){user, error in
            if error == nil && user != nil {
               // self.navigationController?.popViewController(animated: true)
                print("User created!")
                self.dismiss(animated: true, completion: nil)
            } else {
                print("error! \(error!.localizedDescription)")
            }
        }
        //navigationController?.popViewController(animated: true)
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
