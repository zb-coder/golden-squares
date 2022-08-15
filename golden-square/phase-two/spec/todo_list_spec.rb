require 'todo_list'

describe TodoList do
    context 'given an empty string' do
        it 'returns an empty array' do
            todo_list = TodoList.new
            expect(todo_list.list).to eq []
        end
    end

    context 'given a task' do
        it 'returns task in an array' do
            todo_list = TodoList.new
            todo_list.add("Buy some bread")
            expect(todo_list.list).to eq ["Buy some bread"]
        end
    end

    context 'given two tasks' do
        it 'returns both tasks in an array' do
            todo_list = TodoList.new
            todo_list.add("Buy some bread")
            todo_list.add("Put petrol in the car")
            expect(todo_list.list).to eq ["Buy some bread", "Put petrol in the car"]
        end
    end

    context 'given two tasks' do
        it 'returns both tasks in an array' do
            todo_list = TodoList.new
            todo_list.add("Buy some bread")
            todo_list.add("Put petrol in the car")
            todo_list.complete ("Put petrol in the car")
            expect(todo_list.list).to eq ["Buy some bread"]
        end
    end
end