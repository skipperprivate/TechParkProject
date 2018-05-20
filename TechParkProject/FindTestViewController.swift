//
//  FindTestViewController.swift
//  TechParkProject
//
//  Created by Aleksey Bgattsev on 18.03.2018.
//  Copyright © 2018 Boss. All rights reserved.
//

import UIKit
import Firebase

class FindTestViewController: UIViewController, UITableViewDataSource {
    
    let cellIdentifier = "FindTestTableViewCell"
    @IBOutlet var FindTestTableView: UITableView!
    var TestModelArr = [TestCellModel] ()

    var ref: DatabaseReference!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ref = Database.database().reference()
        
       // ref.child("test1").child("Q1").observeSingleEvent(of: .value, with: { (snapshot) in
         //    print("Snapshot:", snapshot.value as! String)
            ref.child("test1").child("Q1").observeSingleEvent(of: .value, with: {(snapshot) in
                let value = snapshot.value as? NSDictionary
                let temp = value?["Answer2"]
                
                
                
                //let testname = value?["Answer1"] as? String ?? ""
                print(temp)
                })
            //let value = snapshot.value as? NSDictionary
            //let testname = value?["Answer1"] as? String ?? ""
            //print(testname)
       // }
        
        createModelArray()
        //let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
       // backgroundImage.image = UIImage(named: "background1.png")
        //self.view.insertSubview(backgroundImage, at: 0)
        self.view.backgroundColor = UIColor(patternImage:UIImage(named:"background1.png")!) //background color 
        
        FindTestTableView.dataSource = self

    }
    
    func createModelArray() {
        guard let test1 = TestCellModel(title: "Математика", description: "Основы устного счета") else {
            fatalError("Unable to instantiate test1")
        }
        guard let test2 = TestCellModel(title: "Русский", description: "Правописание жи-ши") else {
            fatalError("Unable to instantiate test1")
        }
        guard let test3 = TestCellModel(title: "Литература", description: "Мертвые души") else {
            fatalError("Unable to instantiate test1")
        }
        
        TestModelArr += [test1, test2, test3]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return TestModelArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = TestModelArr[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        if let castedCell = cell as? FindTextTableViewCell {
            castedCell.fillCell(with: model)
        }
        return cell
    }
    
    
   /* @IBAction func finishRegistration(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }*/
    


}
