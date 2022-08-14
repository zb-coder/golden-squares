require 'todo_list'

describe TodoList do
    context 'given an empty string' do
        it 'returns an empty array' do
            todo_list = TodoList.new
            expect(todo_list.list).to eq []
        end
    end
end