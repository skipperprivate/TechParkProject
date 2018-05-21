//
//  FindTestsViewController.swift
//  TechParkProject
//
//  Created by Oleg on 21.05.2018.
//  Copyright © 2018 Boss. All rights reserved.
//

import UIKit
import Foundation
import Firebase

class FindTestsViewController: UIViewController , UITableViewDataSource, UITableViewDelegate {

    var tableView:UITableView!
    
    var posts = [
        Post (id: "1", author: "Donald Trump", text: "Bigly!")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView = UITableView(frame: view.bounds, style: .plain)
        tableView.backgroundColor = UIColor(patternImage:UIImage(named:"background1.png")!) //background color
        view.addSubview(tableView)
        
        let cellNib = UINib(nibName: "PostTableViewCell", bundle: nil)
        tableView.register(cellNib, forCellReuseIdentifier: "postCell")
        view.addSubview(tableView)
        
        var layoutGuide:UILayoutGuide!
        
        layoutGuide = view.safeAreaLayoutGuide
        
        tableView.leadingAnchor.constraint(equalTo: layoutGuide.leadingAnchor).isActive = true
        tableView.topAnchor.constraint(equalTo: layoutGuide.topAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: layoutGuide.trailingAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: layoutGuide.bottomAnchor).isActive = true
       // tableView.numberOfSections = 12
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.reloadData()
        
       // self.view.backgroundColor = UIColor(patternImage:UIImage(named:"background1.png")!) //background color 
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "postCell", for: indexPath) as! PostTableViewCell
        return cell
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
