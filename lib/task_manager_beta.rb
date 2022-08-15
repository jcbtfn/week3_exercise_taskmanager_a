class TaskManager 

    def initialize
        @list = []
    end

    def addtask (task)
        if (task != nil && task != "" && task != " ")
            @list << task
        else
            return "Can't add the task, is empty."
        end
    end

    def tasklist
        if (@list == [])
            return "The list of tasks is empty."
        end
        return @list.each_index {|i| puts "Task " + (i + 1).to_s + ": " + @list[i]}
    end

    def completed (tasknum = nil, task = "")
        if ((@list[tasknum.to_i - 1] != nil) && tasknum != nil)
            return @list.delete_at(tasknum.to_i)
        elsif @list.include?(task)
            return @list.delete(task)
        else
            return "No task/entry for this value/task, please check again."
        end
    end

end