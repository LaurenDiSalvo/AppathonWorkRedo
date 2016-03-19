//
//  MainViewController.swift
//  Timmy
//
//  Created by Chelsea Waida on 11/30/15.
//  Copyright (c) 2015 Chelsea Waida. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    
    var pickerDataSource = ["Boston University", "Northeastern University", "Tufts University"]
    @IBOutlet weak var chapterPickerView: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.chapterPickerView.dataSource = self;
        self.chapterPickerView.delegate = self;

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func numberOfComponentsInPickerView(chapterPickerView: UIPickerView) -> Int {
        return 1
    }
    
    
    func pickerView(chapterPickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerDataSource.count;
    }
    
    func pickerView(chapterPickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return pickerDataSource[row]
    }
    
    @IBAction func saveButtonPressed(sender: AnyObject) {
        
        let chosen = chapterPickerView.selectedRowInComponent(0)
        var chosenChapter = pickerDataSource[chosen]
        
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
