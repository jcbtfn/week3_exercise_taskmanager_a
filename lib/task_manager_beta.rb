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

    def completed (tasknum)
        if @list[tasknum.to_i - 1] != nil
            @list.delete_at(tasknum.to_i)
        else
            return "No task/entry for this value, please check again."
        end
    end

end