{{PROBLEM}} Class Design Recipe
1. Describe the Problem
Put or write the user story here. Add any clarifying notes you might have.

    1.1 So that I can keep track of my tasks
    I want a program that I can add todo tasks to and see a list of them.

    1.2 So that I can focus on tasks to complete
    I want to mark tasks as complete and have them disappear from the list.

2. Design the Class Interface
Include the initializer and public methods with all parameters and return values.

# EXAMPLE

class TaskManager

    def initialize
        we initialize a list (instance variable), in this case a hash
    end

    def add (string)
        add task / adds a task to the list
    end

    def tasklist
        return the list of tasks
    end
    
    def completed (number (integer) of entry on the list)
        deleted the task from the list
    end

end

3. Create Examples as Tests
Make a list of examples of how the class will behave in different situations.

# EXAMPLE

task = TaskManager.new()

# 1
task.addtask("") => "Can't add the task, is empty."

# 2
task.addtask(" ") => "Can't add the task, is empty."

# 3
task.addtask(nil) => "Can't add the task, is empty."

# 4
task.tasklist - with an empty list => "The list of tasks is empty."

# 5
task.addtask("Moan the lawn") => ["Moan the lawn"]

# 6
task.addtask("Wash dishes") => ["Moan the lawn", "Wash dishes"]

# 7
task.addtask("Hoover the floor") => ["Moan the lawn", "Wash dishes", "Hoover the floor"]

# 8
task.completed("1") - Wash dishes => ["Moan the lawn", "Hoover the floor"]

# 9
task.completed("0") - Moan the lawn => ["Hoover the floor"]

# 10
task.addtask("Repair the bathroom tap") => ["Hoover the floor", "Repair the bathroom tap"]

# 11
task.completed("20") => "No task/entry for this value, please check again."

4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.
