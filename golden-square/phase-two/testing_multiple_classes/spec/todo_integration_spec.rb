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
    
    context 'when multiple incomplete tasks are given' do
        it 'returns the incomplete tasks' do
            todo_list = TodoList.new
            todo_1 = Todo.new("task_1")
            todo_2 = Todo.new("task_2")
            todo_3 = Todo.new("task_3")
            todo_3.mark_done!
            todo_list.add(todo_1)
            todo_list.add(todo_2)
            todo_list.add(todo_3)
            expect(todo_list.incomplete).to eq [todo_1, todo_2]
        end
    end

    context 'when 1 complete task is added' do
        it 'returns the complete task' do
            todo_list = TodoList.new
            todo_3 = Todo.new("task_3")
            todo_3.mark_done!
            todo_list.add(todo_3)
            expect(todo_list.complete).to eq [todo_3]
        end
    end

    context 'when multiple complete tasks are added' do
        it 'returns the complete tasks' do
            todo_list = TodoList.new
            todo_1 = Todo.new("task_1")
            todo_2 = Todo.new("task_2")
            todo_3 = Todo.new("task_3")
            todo_2.mark_done!
            todo_3.mark_done!
            todo_list.add(todo_1)
            todo_list.add(todo_2)
            todo_list.add(todo_3)
            expect(todo_list.complete).to eq [todo_2, todo_3]
        end
    end
end