//
//  TaskManager.swift
//  To do List
//
//  Created by Mihir Kelkar on 7/7/14.
//  Copyright (c) 2014 Mihir Kelkar. All rights reserved.
//

import UIKit

var TaskMgr: TaskManager = TaskManager()

//DEfine a structure for type tasks. The attributes of a task structure are name and description
struct Task{
    var taskName: String = "un-named"
    var taskDesc: String = "Not specified"
}

class TaskManager: NSObject {
    //The object task mananger contains a list of all task structures that have been created so far
    var taskList = Task[]()
    //This function is used to add newer tasks to the task manager
    func addTask(name: String, desc:String){
        taskList.append(Task(taskName: name, taskDesc: desc))
    }
    //Now, assign the storyboard's table view as a datasource and delegate to the view controller.
    //Afer we have done this, we now need to inherit those subclasses in out first view controller.
    //So we add UI Table VIew Delegate and UI Table View Data source
   
    //After we have added those, we have errors. Which basically mean that we haven;t implemented
    //all the functions that the UITableview delegate and UI table view data source require us to have.
    //So go ahead and control click on those UITableViewDelegate and Datasource to see the require functions
    //Lets also define an instance of our class called TaskMgr
    
    //In our first view controller, we have defined two new functions. Read the docuemntation there. 
    
    //Build the second view in storu=yboard. 
    //Assign the delegate property of both text fields to Second View Contoller.
    //Now go ahead and add the UITextFieldDelgate as ingerited thingy. 
    //Write the textFieldShould return function. 
    //Move to second view controller for documentation
    //After we have comeback and built the entire second view and its code. We need to go to the first view
    //and write a function
}
