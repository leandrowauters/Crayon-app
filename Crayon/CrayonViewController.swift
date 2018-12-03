//
//  ViewController.swift
//  Crayon
//
//  Created by Leandro Wauters on 12/3/18.
//  Copyright © 2018 Leandro Wauters. All rights reserved.
//

import UIKit

class CrayonViewController: UIViewController {
var crayons = Crayon.allTheCrayons
    
    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.dataSource = self
    }


}
extension CrayonViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return crayons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let crayon = crayons[indexPath.row]
        let cell = myTableView.dequeueReusableCell(withIdentifier: "crayonCell", for: indexPath)
        cell.textLabel?.text = crayon.name
        cell.detailTextLabel?.text = crayon.hex
        cell.backgroundColor = UIColor (displayP3Red: CGFloat(crayon.red/250), green: CGFloat(crayon.green/250), blue: CGFloat(crayon.blue/250), alpha: 1)
        return cell
    }
    
    
}
