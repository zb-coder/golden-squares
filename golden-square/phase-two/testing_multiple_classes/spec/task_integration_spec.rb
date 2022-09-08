require 'task_list'
require 'task'

describe 'integration' do
    it 'adds tasks and lists them out' do
        task_list = TaskList.new
        task_1 = Task.new("Walk the cat")
        task_2 = Task.new("Walk the dog")
        task_list.add(task_1)
        task_list.add(task_2)
        expect(task_list.all).to eq [task_1, task_2]
    end

    context 'when we mark a task of complete' do
        it 'does not show up in the task list' do
            task_list = TaskList.new
            task_1 = Task.new("Walk the cat")
            task_2 = Task.new("Walk the dog")
            task_2.mark_complete
            task_list.add(task_1)
            task_list.add(task_2)
            expect(task_list.all).to eq [task_1]
        end

        it 'shows up in the completed task list' do
            task_list = TaskList.new
            task_1 = Task.new("Walk the cat")
            task_2 = Task.new("Walk the dog")
            task_2.mark_complete
            task_list.add(task_1)
            task_list.add(task_2)
            expect(task_list.complete).to eq [task_2]
        end
    end
end