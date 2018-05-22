//
//  GreetingViewController.swift
//  TechParkProject
//
//  Created by Oleg on 23.05.2018.
//  Copyright © 2018 Boss. All rights reserved.
//

import UIKit

class GreetingViewController: UIViewController {

    @IBOutlet weak var question: UILabel!
    @IBOutlet weak var question1: UILabel!
    @IBOutlet weak var ThisIsIt: UIButton!
    @IBOutlet weak var a1: UITextField!
    @IBOutlet weak var a2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        question.text = "Дата основания МГТУ им.Баумана (внесите номер ответа): \n1. 2000 год \n2. 1830 год \n3. 67 год \n4. 1930 год"
        question1.text = "Продолжите фразу <Выпьем за ...> (внесите номер ответа): \n1. МГТУ \n2. Любовь \n3. IOS \n4. Меня"
        
        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor(patternImage:UIImage(named:"background1.png")!) //background color
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Tap(_ sender: Any) {
        
        if (a1.text == "2") {
            a1.text = ""
            a2.text = ""
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
