//
//  SettingsViewController.swift
//  TechParkProject
//
//  Created by Boss on 18/04/2018.
//  Copyright © 2018 Boss. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    let authoriseKey = "authorise";
    var authorisedState = "none";
    
    @IBOutlet var _username: UITextField!
    @IBOutlet var _password: UITextField!
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
        logOutBTN.isHidden = true;
        nickNameLabel.isHidden = true;
        statusLabel.isHidden = true;
        //avatarPhoto.isHidden = true;
        changeAvatarPhotoBTN.isHidden = true;
        testsTakenLabel.isHidden = true;
        testsTakenNum.isHidden = true;
        testsCreatedLabel.isHidden = true;
        testsCreatedNum.isHidden = true;

        self.view.backgroundColor = UIColor(patternImage:UIImage(named:"background1.png")!) //background color 
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loginBTN(_ sender: Any) {
        if (_username?.text == "123") && (_password?.text == "321"){
            authorisedState = authoriseKey;
            logOutBTN.isHidden = false;
            _username.isHidden = true;
            _password.isHidden = true;
            loginBTN.isHidden = true;
            registrationBTN.isHidden = true;
            
            logOutBTN.isHidden = false;
            nickNameLabel.isHidden = false;
            statusLabel.isHidden = false;
           // avatarPhoto.isHidden = false;
            changeAvatarPhotoBTN.isHidden = false;
            testsTakenLabel.isHidden = false;
            testsTakenNum.isHidden = false;
            testsCreatedLabel.isHidden = false;
            testsCreatedNum.isHidden = false;
            
            testsCreatedNum.text = "777";
            testsTakenNum.text = "111";
        }
    }
    
    @IBAction func logOutBTN(_ sender: Any) {
        _username.isHidden = false;
        _password.isHidden = false;
        loginBTN.isHidden = false;
        registrationBTN.isHidden = false;
        
        logOutBTN.isHidden = true;
        nickNameLabel.isHidden = true;
        statusLabel.isHidden = true;
        //avatarPhoto.isHidden = true;
        changeAvatarPhotoBTN.isHidden = true;
        testsTakenLabel.isHidden = true;
        testsTakenNum.isHidden = true;
        testsCreatedLabel.isHidden = true;
        testsCreatedNum.isHidden = true;
        
        logOutBTN.isHidden = true;
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
