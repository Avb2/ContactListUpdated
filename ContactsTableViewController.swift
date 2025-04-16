//
//  ContactsTableViewController.swift
//  ContactListUpdated
//
//  Created by Alex Bringuel on 4/15/25.
//

import UIKit
import CoreData


class ContactsTableViewController: UITableView {
    var contacts: [NSManagedObject] = []
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad(){
        super.viewDidLoad()
        loadDataFromDatabase()
    }
    
    override func didReceiveMemoryWarning(){
        super.didReceiveMemoryWarning()
    }
    
    func loadDataFromDatabase() {
        let context = appDelegate.persistentContainer.viewContext
        let request = NSFetchRequest<NSManagedObject>(entityName: "Contact")
        do {
            contacts = try context.fetch(request)
        } catch let error as NSError {
            print("Could not fetch. \(error), \(error.userInfo)")
        }
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: UITableVieCell) {
        let cell = tableView.dequeReusableCell(withIdentifier: "ContactsCell", for: indexPath)
        
        let contact = contacts[indexPath.row] as? Contact
        
        cell.textLabel?.text = contact?.city
        
        return cell
    }
    
    
    override func tableView(_ tableview:, TableView, cellForRowAt: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "ContactsCell", for: indexPath)
        cell.textLabel?.text = contacts[indexPath.row]
        return cell
    }
    
    

}
