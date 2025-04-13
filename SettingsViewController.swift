//
//  SettingsViewController.swift
//  ContactListUpdated
//
//  Created by Alex Bringuel on 4/7/25.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var pckSortField: UIPickerView!
    
    @IBOutlet weak var swAscending: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func sortDirectionChanged(_ sender: Any) {
    }
}
