//
//  SettingsViewController.swift
//  TechParkProject
//
//  Created by Boss on 18/04/2018.
//  Copyright © 2018 Boss. All rights reserved.
//

import UIKit
import FirebaseAuth

class SettingsViewController: UIViewController {
    
   // let authoriseKey = "authorise";
    //var authorisedState = "none";
    
    @IBOutlet weak var _username: UITextField!
    @IBOutlet weak var _password: UITextField!
    @IBOutlet var logOutBTN: UIButton!
    @IBOutlet var loginBTN: UIButton!
    @IBOutlet var registrationBTN: UIButton!
    @IBOutlet var nickNameLabel: UILabel!
    @IBOutlet var statusLabel: UILabel!
    //@IBOutlet var avatarPhoto: UIImageView!
    @IBOutlet var changeAvatarPhotoBTN: UIButton!
    @IBOutlet var testsTakenLabel: UILabel!
    @IBOutlet var testsCreatedLabel: UILabel!
    @IBOutlet var testsTakenNum: UILabel!
    @IBOutlet var testsCreatedNum: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor(patternImage:UIImage(named:"background1.png")!) //background color 
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func logOutBTN(_ sender: Any) {
        try! Auth.auth().signOut()
        self.dismiss(animated: false, completion: nil)
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
