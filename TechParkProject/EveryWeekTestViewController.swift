//
//  EveryWeekTestViewController.swift
//  TechParkProject
//
//  Created by Oleg on 23.05.2018.
//  Copyright © 2018 Boss. All rights reserved.
//

import UIKit

class EveryWeekTestViewController: UIViewController {

    @IBOutlet weak var Gret: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        Gret.text = "Congratulations on passing our everydayweek test! \nHope to see your activity soon!"
        
        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor(patternImage:UIImage(named:"background1.png")!) //background color
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
