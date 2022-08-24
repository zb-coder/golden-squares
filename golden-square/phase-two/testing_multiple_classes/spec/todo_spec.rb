require 'todo.rb'

describe Todo do
    
    describe '#task' do
        it 'returns the task as a string' do
            todo = Todo.new('task')
            expect(todo.task).to eq 'task'
        end
    end

    describe '#done?' do
        it 'returns false if the task has not been done' do
            todo = Todo.new('task')
            expect(todo.done?).to eq false
        end
    end

    describe '#mark_done!' do
        it 'returns true if the task has been done' do
            todo_1 = Todo.new('task_1')
            todo_2 = Todo.new('task_2')
            todo_3 = Todo.new('task_3')
            todo_1.mark_done!
            expect(todo_1.done?).to eq true
            expect(todo_2.done?).to eq false
            expect(todo_3.done?).to eq false
        end
    end
end