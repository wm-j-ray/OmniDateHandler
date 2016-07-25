//
//  OmniDateHandlerViewController.swift
//  OmniDateHandler
//
//  Created by wmjray on 7/25/16.
//  Copyright © 2016 wmjray. All rights reserved.
//

import UIKit

class OmniDateHandlerViewController: UIViewController {
    
    @IBOutlet weak var datePicker: UIDatePicker!
    var dateFormatter = NSDateFormatter()
    var selectedDate = NSDate()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


    
    // ============================================================================= //
    // MARK: - DatePicker Actions
    // ============================================================================= //
    
    @IBAction func datePickerAction(sender: AnyObject) {
        selectedDate = datePicker.date
        
    }
    
    func printDate(aDate:NSDate) {
        dateFormatter.dateFormat = "MM-dd-yyyy HH:mm"
        let strDate = dateFormatter.stringFromDate(aDate)
        print("Date: \(strDate)")
    }
    
    func setDial(aDate:NSDate) {
        datePicker.date = aDate
    }
    
    func setDateSelected(aDate:NSDate){
        selectedDate = aDate
    }
    
    func syncDates(aDate:NSDate) {
        printDate(aDate)
        setDial(aDate)
        setDateSelected(aDate)
    }
    
    
    // ============================================================================= //
    // MARK: - Button Actions
    // ============================================================================= //
    
    @IBAction func clearBtnHit(sender: AnyObject) {
        syncDates(NSDate())
    }
    
    @IBAction func dayBtnHit(sender: AnyObject) {
        let tomorrow = selectedDate.dateByAddingDays(1)
        syncDates(tomorrow)
    }
    
    @IBAction func weekendBtnHit(sender: AnyObject) {
        let weekStart = selectedDate.dateAtEndOfWeek()
        syncDates(weekStart)
        
    }
    
    @IBAction func weekBtnHit(sender: AnyObject) {
        let aWeek = selectedDate.dateByAddingDays(7)
        syncDates(aWeek)
    }
    
    @IBAction func monthBtnHit(sender: AnyObject) {
        let nextMonth = selectedDate.dateByAddingMonths(1)
        syncDates(nextMonth)
    }
 
    @IBAction func yearBtnHit(sender: AnyObject) {
        let nextYear = selectedDate.dateByAddingMonths(12)
        syncDates(nextYear)
    }
    
    
    
    
    

}
