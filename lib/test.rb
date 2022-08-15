
class TaskMaster

    def initialize
        @array = ["Moan the lawn", "Hoover the floor", "Make coffee"]
    end

    def tasklist
        if (@array == [])
            return "The list of tasks is empty."
        end
    
        @array.each_index {|i| puts "Index value: " + (i).to_s}
        @array.each {|j| puts "Inside of the index content: " + (j).to_s}
        #return @array.each_index {|i| puts "Task " + (i + 1).to_s + ": " + @array[i]}
    end

    def completed (number = nil, task = nil)

        p "STARTING ARRAY: " + @array.to_s
        #p (number.to_i)

        if (@array[number.to_i] != nil && number != nil)
            p "What I delete: " + @array.delete_at(number).to_s
        elsif @array.include?(task)
            p "What I delete: " + @array.delete(task).to_s
        else
            p "The array remaining: " + @array.to_s
            "No task/entry for this value/task, please check again."
        end

        p "ARRAY AT THE END: " + @array.to_s
    end

end

tasks = TaskMaster.new()
tasks.tasklist
tasks.completed(nil, "Hoover the floor")
tasks.tasklist
tasks.completed(0, nil)
tasks.tasklist



    # def completed (tasknum = nil, task = "")
    #     if ((@list[tasknum.to_i - 1] != nil) && tasknum != nil)
    #         return @list.delete_at(tasknum.to_i)
    #     elsif @list.include?(task)
    #         return @list.delete(task)
    #     else
    #         return "No task/entry for this value/task, please check again."
    #     end
    # end