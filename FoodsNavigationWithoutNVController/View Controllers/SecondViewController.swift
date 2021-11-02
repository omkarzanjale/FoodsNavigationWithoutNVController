//
//  SecondViewController.swift
//  FoodsNAvigationWithoutNVController
//
//  Created by Mac on 07/10/21.
//

import UIKit

class SecondViewController: UIViewController {
    //
    //MARK: Outlets
    //
    @IBOutlet weak var foodTypeLabel: UILabel!
    @IBOutlet weak var foodNameLabel: UILabel!
    @IBOutlet weak var hotelNameLabel: UILabel!
    @IBOutlet weak var hotelNameLbl: UILabel!
    
    var foodType: String?
    var foodName: String?
    var hotelName: String?
    var flag: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        DisplayData()
    }
    
    private func DisplayData() {
        foodTypeLabel.text = foodType
        foodNameLabel.text = foodName
        if flag == 1 {
            hotelNameLabel.isHidden = true
            hotelNameLbl.isHidden = true
        }else{
            hotelNameLabel.text = hotelName
        }
    }
}
