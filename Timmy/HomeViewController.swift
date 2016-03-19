//
//  HomeViewController.swift
//  Timmy
//
//  Created by GAI Guest on 3/1/16.
//  Copyright © 2016 Chelsea Waida. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    var currentFund = 0.1 as Float
    
    @IBOutlet weak var FundraisingProgressView: UIProgressView!

    override func viewDidLoad() {
        FundraisingProgressView.setProgress(self.currentFund, animated: false)
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet
    var tableView: UITableView!

    @IBAction func DonateButton(sender: AnyObject) {
        self.currentFund += 0.1
        FundraisingProgressView.setProgress(currentFund, animated: false)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
