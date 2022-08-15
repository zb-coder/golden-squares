require 'todo_list'

describe TodoList do
    context 'given an empty string' do
        it 'returns an empty array' do
            todo_list = TodoList.new
            expect(todo_list.list).to eq []
        end
    end

    context 'given a task' do
        it 'adds task to an array' do
            todo_list = TodoList.new
            todo_list.add("Buy some bread")
            expect(todo_list.list).to eq ["Buy some bread"]
        end
    end
end