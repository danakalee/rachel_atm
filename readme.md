## Bank account demonstrating MVC
Simple bank account example to demonstrate to Dana how MVC works 
Written by [Rachel Wong](https://github.com/rachelwong)

### Atm_Model
Primary purpose: Stores information and execute calculations
* Calculates deposit, withdrawal 
* Checks for positive amount inputted
Talks to controller  

### Atm_controller
Primary purpose: Main switchboard for directing the flow of the program from start run to exit
* Main while statement that loops until QUIT is chosen
* Case statement to direct between deposit, withdrawal, show balance and quit program
Talks to view nad controller

### Atm_View
Primary purpose: Displays screens (end-points of the program)
* Display menu options
* Display results of calculations
* Error, welcome and goodbye screens
Talks to Controller

### GetInput
Primary purpose: Takes user input and sterilise it. 
* Get menu options
* Get chosen amount for calculations
Talks to View and Controller
