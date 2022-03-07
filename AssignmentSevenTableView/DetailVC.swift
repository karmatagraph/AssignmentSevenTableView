//
//  DetailVC.swift
//  AssignmentSevenTableView
//
//  Created by karma on 3/7/22.
//

import UIKit

class DetailVC: UIViewController {

    @IBOutlet weak var imgViewDetail: UIImageView!
    @IBOutlet weak var imgLabelDetail: UILabel!
    
    var img = UIImage()
    var lblName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imgViewDetail.image = img
        imgLabelDetail.text = lblName
        print("value of title from dest vc: \(lblName)")
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
