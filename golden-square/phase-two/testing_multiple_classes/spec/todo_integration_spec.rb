require 'todo.rb'
require 'todo_list.rb'

describe 'integration' do
    context 'when 1 incomplete task is given' do
        it 'returns the incomplete task' do
            todo_list = TodoList.new
            todo = Todo.new("task")
            todo_list.add(todo)
            expect(todo_list.incomplete).to eq [todo]
        end
    end
end