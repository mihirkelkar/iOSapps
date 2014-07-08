Creating a to do list application. 

Create a tab application. 

open a new cocoa class file called TaskMananger

Define a task structure with TaskName and TaskDesc as attributes.

Add an array of tasks which contains task structures. 

add a function which can append task structures to task array as a class method

Create an instance of the class taskmanager
Now build the first view. Add a table view to the first view. 
Assign the table view as the data store and the delegate.

Now go the first view controller. add UItableviewdelegte and the UITableViewDatastore as its subclasses in Firstview controller class. 

Import methods from either subclasses, this will get you rid of the error. 

the first function you need to copy from the subclass not an optional function. 
It basically returns the number of rows to be rendered back to your table view. 
So return the number of elements in the array of your task Manager instance.

The second function is basically used to create a table cell. 
Set style, text and subtext of the table cell and return it .
This function will get called everytime you switch to the first view of the app for every cell that needs to be displayed.

Now go to the story board and build a second view. 
Add both textFields to the second view controller as delegates. 
Add the UITextFieldDelegate as a sublclass in the second view controller. 

Now get IBoutlets and IBActions for the textfileds and button to the second view controller. 

the method should basically accept the text from the text field and call addTask from the TaskManager class to add it to the task. 


Now, get a IBOutler refernce for the entire table view from the First view
Now go back to the First view Controller and add a function which will now referesh the list view every time you switch to it. 

App Done

Images of the working app below. 
<img src = "http://imgur.com/zTbi8JZ"></img>
<img src = "http://imgur.com/JQmiYnb"></img>

