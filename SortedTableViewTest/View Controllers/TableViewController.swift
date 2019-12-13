//
//  TableViewController.swift
//  SortedTableViewTest
//
//  Created by Derek Nguyen on 12/11/19.
//  Copyright © 2019 Derek Nguyen. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    let collation = UILocalizedIndexedCollation.current()
    var sections: [[Player]] = []
    var objects: [Player] = [] {
        didSet {
            let selector: Selector =  #selector(getter: CollationIndexable.collationString)
            let sortedObjects = collation.sortedArray(from: objects, collationStringSelector: selector)
            sections = Array(repeating: [], count: collation.sectionTitles.count)
            sortedObjects.forEach {
                let indx = collation.section(for: $0, collationStringSelector: selector)
                sections[indx].append($0 as! Player)
            }
            self.tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        objects = data
    }
}

extension TableViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sections[section].count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if self.sections[section].isEmpty {
            return nil
        }
        else {
            return collation.sectionTitles[section]
        }
    }
    
    override func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        return collation.sectionTitles
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "playerCell", for: indexPath)
        cell.textLabel?.text = sections[indexPath.section][indexPath.row].description
        return cell
    }
    
}
