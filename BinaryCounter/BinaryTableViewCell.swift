//
//  BinaryTableViewCell.swift
//  BinaryCounter
//
//  Created by admin on 10/12/2021.
//

import UIKit

class BinaryTableViewCell: UITableViewCell {
    
    var delegate: BinaryCellDelegate?
    @IBOutlet weak var numberLabel: UILabel!
    
    @IBAction func minusButton(_ sender: UIButton) {
        if let value = self.numberLabel.text {
            delegate?.minus(number: Int(value)!)
        }
        
    }
    @IBAction func plusButton(_ sender: UIButton) {
        if let value = self.numberLabel.text {
            delegate?.plus(number: Int(value)!)
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
