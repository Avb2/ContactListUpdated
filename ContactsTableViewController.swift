//
//  ContactsTableViewController.swift
//  ContactListUpdated
//
//  Created by Alex Bringuel on 4/15/25.
//

import UIKit

class ContactsTableViewController: UITableView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override func tableView(_ tableview:, TableView, cellForRowAt: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "ContactsCell", for: indexPath)
        cell.textLabel?.text = contacts[indexPath.row]
        return cell
    }
    
    

}
