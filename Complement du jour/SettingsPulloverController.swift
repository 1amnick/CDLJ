//
//  SettingsPulloverController.swift
//  Complement du jour
//
//  Created by mac user on 5/17/18.
//  Copyright © 2018 1amnick. All rights reserved.
//

import UIKit

class SettingsPulloverController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func backButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func DatePicker(_ sender: Any) {
        
    }
    @IBAction func SwitchAction(_ sender: Any) {
        if SwitchOutlet.isOn {
            ToggleLabelOutlet.text = "Reminders are on!"
        }else{
            ToggleLabelOutlet.text = "Reminders are off."
        }
       
    }
    @IBOutlet weak var SwitchOutlet: UISwitch!
    
    @IBOutlet weak var ToggleLabelOutlet: UILabel!
    
    @IBAction func TimePicked(_ sender: UIDatePicker) {
        print(TimePicker.date)
    }
    
    @IBOutlet weak var TimePicker: UIDatePicker!
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
