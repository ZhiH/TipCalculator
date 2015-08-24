//
//  SettingsViewController.swift
//  Tips
//
//  Created by Zhi Huang on 8/23/15.
//  Copyright (c) 2015 Zhi Huang. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var defaultTip: UISegmentedControl!
    var defaults = NSUserDefaults.standardUserDefaults()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        var tipExist = defaults.objectForKey("tip_percentage")
        var intValue = defaults.integerForKey("tip_percentage")
        if (tipExist !== nil) {
            defaultTip.selectedSegmentIndex = intValue
        }
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

    @IBAction func goBack(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    @IBAction func onEditingTipsDefault(sender: AnyObject) {
        var defaultTipIndex = defaultTip.selectedSegmentIndex
        defaults.setInteger(defaultTipIndex, forKey: "tip_percentage")
        defaults.synchronize()
    }
}
