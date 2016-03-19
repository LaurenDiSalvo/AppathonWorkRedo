//
//  CalendarViewController.swift
//  Timmy
//
//  Created by Lauren DiSalvo on 3/19/16.
//  Copyright © 2016 Chelsea Waida. All rights reserved.
//

import UIKit

class CalendarViewController: UIViewController {


        @IBOutlet weak var calendarView: NWCalendarView!
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            calendarView.layer.borderWidth = 1
            calendarView.layer.borderColor = UIColor.lightGrayColor().CGColor
            calendarView.backgroundColor = UIColor.whiteColor()
            
            
            var date = NSDate()
            let newDate = date.dateByAddingTimeInterval(60*60*24*7)
            let newDate2 = date.dateByAddingTimeInterval(60*60*24*9)
            let newDate3 = date.dateByAddingTimeInterval(60*60*24*30)
            
            calendarView.disabledDates = [newDate, newDate2, newDate3]
            calendarView.selectionRangeLength = 1
            calendarView.maxMonths = 4
            calendarView.delegate = self//calendarView.delegate
            calendarView.createCalendar()
        }
    
   
        // Do any additional setup after loading the view.


//    func didChangeFromMonthToMonth(fromMonth: NSDateComponents, toMonth: NSDateComponents) {
//        print("Change From month \(fromMonth) to month \(toMonth)")
//    }
//    func didSelectDate(fromDate: NSDateComponents, toDate: NSDateComponents) {
//        print("Selected date \(fromDate.date!) to date \(toDate.date!)")
//        let vs = self.storyboard?.instantiateViewControllerWithIdentifier("events")
//        
//        self.presentViewController(vs! as UIViewController, animated: true, completion: nil)
//        
//        
//}
 //   override func didReceiveMemoryWarning() {
    //    super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    
}

    extension CalendarViewController: NWCalendarViewDelegate {
        func didChangeFromMonthToMonth(fromMonth: NSDateComponents, toMonth: NSDateComponents) {
            let dateFormatter: NSDateFormatter = NSDateFormatter()
            
            let months = dateFormatter.standaloneMonthSymbols
            let fromMonthName = months[fromMonth.month-1] as String
            let toMonthName = months[toMonth.month-1] as String
            
            print("Change From '\(fromMonthName)' to '\(toMonthName)'")
        }
        
        func didSelectDate(fromDate: NSDateComponents, toDate: NSDateComponents) {
            print("Selected date '\(fromDate.month)/\(fromDate.day)/\(fromDate.year)' to date '\(toDate.month)/\(toDate.day)/\(toDate.year)'")
            
            let vs:EventViewController = self.storyboard?.instantiateViewControllerWithIdentifier("events") as! EventViewController
                    vs.event_date = fromDate
                    self.presentViewController(vs, animated: true, completion: nil)
            
        }
    }



