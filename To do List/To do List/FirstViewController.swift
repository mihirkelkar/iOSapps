//
//  FirstViewController.swift
//  To do List
//
//  Created by Mihir Kelkar on 7/7/14.
//  Copyright (c) 2014 Mihir Kelkar. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
                            
    @IBOutlet var tblView: UITableView
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //Telss our table how many rows it needs to render
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int
    {
        println(TaskMgr.taskList.count)
        return TaskMgr.taskList.count
    }
    //We now crate a cell and return it to our view. Everytime the view is created, this function is
    //called the same number of times as the number of task manager instances in the array.
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell!{
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "default")
        cell.text = TaskMgr.taskList[indexPath.row].taskName
        cell.detailTextLabel.text = TaskMgr.taskList[indexPath.row].taskDesc
        return cell
        
    }
    
    //A function which refreshes the view everytime we return to this view. 
    override func viewWillAppear(animated: Bool){
        tblView.reloadData()
    }

    //Delete table cell from UITableViewDelegate
}

