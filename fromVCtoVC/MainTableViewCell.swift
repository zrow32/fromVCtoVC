//
//  MainTableViewCell.swift
//  fromVCtoVC
//
//  Created by Vladimir Zhirov on 3/31/17.
//  Copyright © 2017 Vladimir Zhirov. All rights reserved.
//

import UIKit

class MainTableViewCell: UITableViewCell, UITableViewDelegate {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dataLabel: UILabel!
    
    // try to put this var dataReceived here, not into VC.swift
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        var dataRecieved: String? {   //var dataREceived  is from VC.swift file in stackOverflow
            willSet {
                dataLabel.text = newValue
            }
    }

    func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
         
    }

}
}
