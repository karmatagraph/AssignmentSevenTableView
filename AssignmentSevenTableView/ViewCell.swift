//
//  ViewCell.swift
//  AssignmentSevenTableView
//
//  Created by karma on 3/7/22.
//

import UIKit

class ViewCell: UITableViewCell {

    @IBOutlet weak var viewImageView: UIImageView!
    @IBOutlet weak var viewTitleLabel: UILabel!
    
    // function to set the video
    func setAnimal(animal: Animal){
        viewImageView.image = animal.image
        viewTitleLabel.text = animal.title
    }
    

}
