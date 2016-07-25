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
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "dd-MM-yyyy HH:mm"
        let strDate = dateFormatter.stringFromDate(datePicker.date)
        print("Date Selected: \(strDate)")
    }
    
    

}
