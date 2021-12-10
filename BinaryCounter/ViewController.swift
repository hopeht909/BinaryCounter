//
//  ViewController.swift
//  BinaryCounter
//
//  Created by admin on 10/12/2021.
//

import UIKit

class ViewController: UIViewController, BinaryCellDelegate {


    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var totalLabel: UILabel!
    var total: Int = 10000000000000000
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.rowHeight = 60
        totalLabel.text = "Total: \(total)"
       
    }
    
    
    func minus(number: Int) {
        total -= number
       totalLabel.text = "Total: \(total)"
    }
    func plus(number: Int) {
        total += number
      totalLabel.text = "Total: \(total)"
    }


}

extension ViewController : UITableViewDataSource, UITableViewDelegate {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 16
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "binaryCell", for: indexPath)  as! BinaryTableViewCell
            cell.delegate = self
            cell.numberLabel?.text = "\(pow(10, indexPath.row))"
        
            return cell
        }

}


