require "task_manager_beta"

RSpec.describe "task manager class and its methods" do

    context "testing the different methods, we need to initialize the object we
    are creating to work with it" do
        task = TaskManager.new()

        it "returns an error message when input is empty" do
            expect(task.addtask("")).to eq "Can't add the task, is empty."
        end

        it "returns an error message when input is just a space" do
            expect(task.addtask(" ")).to eq "Can't add the task, is empty."
        end

        it "returns an error message when input is nil" do
            expect(task.addtask(nil)).to eq "Can't add the task, is empty."
        end

        it "returns a message stating the list is empty when the list is empty" do
            expect(task.tasklist).to eq "The list of tasks is empty."
        end

        it "adds the task when is a string with text, example: Moan the lawn" do
            task.addtask("Moan the lawn")
            expect(task.tasklist[0]).to eq "Moan the lawn"
        end

        it "adds the task when is a string with text, example: Wash dishes" do
            task.addtask("Wash dishes")
            expect(task.tasklist[1]).to eq "Wash dishes"
        end

        it "adds the task when is a string with text, example: Hoover the floor" do
            task.addtask("Hoover the floor")
            expect(task.tasklist[2]).to eq "Hoover the floor"
        end

        it "deletes a task when receiving the number of the index of the task" do
            task.completed("1")
            expect(task.tasklist).to eq (["Moan the lawn", "Hoover the floor"])
        end

        it "deletes a task when receiving the number of the index of the task" do
            task.completed("0")
            expect(task.tasklist).to eq (["Hoover the floor"])
        end

        it "adds the task when is a string with text, example: Repair the bathroom tap" do
            task.addtask("Repair the bathroom tap")
            expect(task.tasklist[1]).to eq "Repair the bathroom tap"
        end

        it "returns an error when an incorrect value is given for delete" do
            expect(task.completed("20")).to eq ("No task/entry for this value/task, please check again.")
        end

        it "deletes a task when receiving the task, example: Repair the bathroom tap" do
            task.completed(nil, "Repair the bathroom tap")
            expect(task.tasklist).to eq (["Hoover the floor"])
        end

        it "returns an error when an incorrect value is given for delete" do
            expect(task.completed(nil, "Bailar una jota")).to eq ("No task/entry for this value/task, please check again.")
        end

        it "deletes a task when receiving the task, example: Hoover the floor" do
            task.completed(nil, "Hoover the floor")
            expect(task.tasklist).to eq ("The list of tasks is empty.")
        end

    end

end
