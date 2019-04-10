//
//  LaureatesTVC.swift
//  SuperHeros_Laureates
//
//  Created by Student on 4/10/19.
//  Copyright © 2019 Student. All rights reserved.
//

import UIKit

class LaureatesTVC: UITableViewController {
    //var powers:[String] = []
    var laureates1 : [[String:Any]]!
    var laureates2:[String:Any]!
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchLaureates()
    }
    
    func fetchLaureates(){
        let urlSession = URLSession.shared
        let url = URL(string: "https://raw.githubusercontent.com/materialsproject/workshop-2017/master/mongo-primer/nobel_laureates.json")
        urlSession.dataTask(with: url!, completionHandler: displayLaureates).resume()
    }
    
    func displayLaureates(data:Data?, urlResponse:URLResponse?, error:Error?)->Void {
        //print("Inside display super hero method")
        do {
            try laureates1 = JSONSerialization.jsonObject(with:data!, options: .allowFragments) as?
                [[String:Any]]
            for i in 0..<laureates1.count
            {
                laureates2 = laureates1[i]
            }
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
            //print(self.superhero)
        } catch {
            print(error)
        }
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return laureates2.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "laureates", for: indexPath)
        //let laureate = laureates2![indexPath.row]
        //cell.textLabel?.text = "\(laureate.firstname) \(laureate.surname)"
        //cell.detailTextLabel?.text = "\(laureate.born) \(laureate.died)"
        return cell
    }
  
}
