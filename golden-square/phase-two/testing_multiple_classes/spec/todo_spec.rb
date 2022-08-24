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
end