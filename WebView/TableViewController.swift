//
//  TableViewController.swift
//  WebView
//
//  Created by Kelvin on 10/12/17.
//  Copyright © 2017 Kelvin. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    var name = ["Facebook","Twitter","Instagram","Linkedin"]
    var links = ["http://www.facebook.com","http://www.twitter.com","http://www.instagram.com","http://www.linkedin.com"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return name.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        cell.textLabel?.text = name[indexPath.row]

        return cell
    }


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showLinks" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let destination = segue.destination as? ViewController
                destination?.links = links[indexPath.row]
            }
        }
    }
    
}
