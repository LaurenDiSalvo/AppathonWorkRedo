//
//  EventViewController.swift
//  Timmy
//
//  Created by Lauren DiSalvo on 3/19/16.
//  Copyright © 2016 Chelsea Waida. All rights reserved.
//

import UIKit

class EventViewController: UIViewController {
    

   
    @IBOutlet weak var eventName: UILabel!
    @IBOutlet weak var eventDescription: UILabel!
    @IBOutlet weak var eventLocation: UILabel!
    @IBOutlet weak var date: UILabel!
    var event_date: NSDateComponents?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        eventName.text = "Name:"
        eventLocation.text = "Location:"
        eventDescription.text = "Description:"
        
        date.text = "Date: \(event_date!.month)/\(event_date!.day)/\(event_date!.year) "
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
