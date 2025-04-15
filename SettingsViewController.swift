//
//  SettingsViewController.swift
//  ContactListUpdated
//
//  Created by Alex Bringuel on 4/7/25.
//

import UIKit

class SettingsViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var pckSortField: UIPickerView!
    @IBOutlet weak var swAscending: UISwitch!
    
    let sortOrderItems: Array<String> = ["ContactName", "City", "Birthday"]
    
    override func viewWillAppear(_ animated: Bool){
        let settings = UserDefaults.standard
        swAscending.setOn(settings.bool(forKey: "sortDirectionAscending"), animated: true)
        let sortField = settings.string(forKey: "sortField")
         var i = 0
        for field in sortOrderItems{
            if field == sortField {
                pckSortField.selectRow(i, inComponent: 0, animated: false)
            }
            i += 1
        }
        pckSortField.reloadComponent(0)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pckSortField.dataSource = self
        pckSortField.delegate = self
    }

    @IBAction func sortDirectionChanged(_ sender: Any) {
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return sortOrderItems.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return sortOrderItems[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print("Chosen item: \(sortOrderItems[row])")
    }
}

