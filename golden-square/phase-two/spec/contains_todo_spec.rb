require 'contains_todo'

describe 'contains_todo method' do
    context 'given an empty string' do
        it 'fails' do
            expect{ contains_todo("") }.to raise_error "Not a task"
        end
    end
end