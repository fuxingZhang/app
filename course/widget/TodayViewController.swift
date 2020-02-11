//
//  TodayViewController.swift
//  widget
//
//  Created by 张复星 on 2020/2/11.
//  Copyright © 2020 张复星. All rights reserved.
//

import UIKit
import NotificationCenter

class TodayViewController: UIViewController, NCWidgetProviding {
    @IBOutlet weak var textDataLabel: UILabel!
    @IBOutlet weak var randomizerButton: UIButton!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
        
    func widgetPerformUpdate(completionHandler: (@escaping (NCUpdateResult) -> Void)) {
        // Perform any setup necessary in order to update the view.
        
        // If an error is encountered, use NCUpdateResult.Failed
        // If there's no update required, use NCUpdateResult.NoData
        // If there's an update, use NCUpdateResult.NewData
        
        textDataLabel.text = "N/A"
        randomizerButton.backgroundColor = UIColor.gray
        
        completionHandler(NCUpdateResult.newData)
    }
    
    func refreshNumber(topRange: Int) -> Int {
        return Int.random(in: 0...topRange)
    }
    
    @IBAction func randomNumberButton(_sender: UIButton) {
        textDataLabel.text = "\(refreshNumber(topRange: 1000))"
        randomizerButton.backgroundColor = UIColor.red
    }
}
