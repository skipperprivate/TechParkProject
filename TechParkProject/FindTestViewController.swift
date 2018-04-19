//
//  FindTestViewController.swift
//  TechParkProject
//
//  Created by Aleksey Bgattsev on 18.03.2018.
//  Copyright © 2018 Boss. All rights reserved.
//

import UIKit

class FindTestViewController: UIViewController, UITableViewDataSource {
    
    let cellIdentifier = "FindTestTableViewCell"
    @IBOutlet var FindTestTableView: UITableView!
    var TestModelArr = [TestCellModel] ()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        createModelArray()
        
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
    


}
