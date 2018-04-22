//
//  MyTestsTableViewController.swift
//  TechParkProject
//
//  Created by Виталий Малахов on 16.03.2018.
//  Copyright © 2018 Boss. All rights reserved.
//

import UIKit

class MyTestsTableViewController: UITableViewController {

    var tests = [Test]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        loadSampleTests()
        //let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        //backgroundImage.image = UIImage(named: "background1.png")
        //self.view.insertSubview(backgroundImage, at: 0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return tests.count
    }

    

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Table view cells are reused and should be dequeued using a cell identifier.
        let cellIdentifier = "MyTestsTableViewCell"
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! MyTestsTableViewCell
        
        // Fetches the appropriate meal for the data source layout.
        let test = tests[indexPath.row]
        
        cell.testTitleLabel.text = test.name
        cell.testTitleImage.image = test.photo
        
        
        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    private func loadSampleTests() {
        let photo1 = UIImage(named: "trump")
        let photo2 = UIImage(named: "deutsch")
        let photo3 = UIImage(named: "whyworks")
        
        
        guard let test1 = Test(name: "Trump's length of haircut Test", photo: photo1) else {
            fatalError("Unable to instantiate test1")
        }
        
        guard let test2 = Test(name: "German Test", photo: photo2) else {
            fatalError("Unable to instantiate test2")
        }
        
        guard let test3 = Test(name: "XML Test", photo: photo3) else {
            fatalError("Unable to instantiate test3")
        }
        
        
        tests += [test1, test2, test3]
        
        
    }

}
