//
//  ViewController.swift
//  FoodsNAvigationWithoutNVController
//
//  Created by Mac on 07/10/21.
//

/*
 Program - diplay another viewController on existing viewController
                navigate without Navigation Controller
                and for snacks hide hotel name and for lunch display hotel name
 */

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var foodsArray = ["Poha","Dal-Tadka","Upma","Paneer-Tikka","Idli","Biryani"]
    var hotelsArray = ["Gurukul","Lake-View","Vista","Pavalian-Hotel","Rajmudra","P.K","Swarg","Test"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let nibFile = UINib(nibName: "LunchCell", bundle: Bundle.main)
        tableView.register(nibFile, forCellReuseIdentifier: "LunchCell")
    }
}
//
//MARK: UITableViewDataSource
//
extension ViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        foodsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row%2==0 {
            let snack = tableView.dequeueReusableCell(withIdentifier: "SnackCell", for: indexPath)
            snack.textLabel?.text = foodsArray[indexPath.row]
            return snack
        }else{
            if let lunch = tableView.dequeueReusableCell(withIdentifier: "LunchCell", for: indexPath)as? LunchCell{
                lunch.lunchNameLabel.text = foodsArray[indexPath.row]
                lunch.hotelNameLabel.text = hotelsArray[indexPath.row]
                return lunch
            }else{
                return UITableViewCell()
            }
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        "Foods"
    }
}
//
//MARK: UITableViewDelegate
//
extension ViewController:UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        120
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let secondViewControllerObj = storyboard?.instantiateViewController(identifier: "SecondViewController")as? SecondViewController{
            secondViewControllerObj.foodName = foodsArray[indexPath.row]
            if indexPath.row%2==0 {
                secondViewControllerObj.foodType = "Snack"
                secondViewControllerObj.flag = 1
            }else{
                secondViewControllerObj.foodType = "Lunch"
                secondViewControllerObj.hotelName = hotelsArray[indexPath.row]
            }
            present(secondViewControllerObj, animated: true)
        }else{
            print("SecondViewController not preasent")
        }
    }
}
