//
//  ContactsTableViewController.swift
//  ContactListUpdated
//
//  Created by Alex Bringuel on 4/15/25.
//

import UIKit
import CoreData


class ContactsTableViewController: UITableViewController {
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
    
    override func tableView(_ tableView:UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "ContactsCell", for: indexPath)
        
        let contact = contacts[indexPath.row] as? Contact
        
        cell.textLabel?.text = contact?.city
        
        return cell
    }
    

    
    

}
