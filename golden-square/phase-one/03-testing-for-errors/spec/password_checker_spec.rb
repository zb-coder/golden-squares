require 'password_checker'

describe PasswordChecker do
    it 'returns true when a password is equal to 8 characters' do
        password = PasswordChecker.new
        expect(password.check("HiyaHiya")).to eq true
    end

    it 'returns true when a password is greater than 8 characters' do
        password = PasswordChecker.new
        expect(password.check("HiyaHiya!")).to eq true
    end

    it 'fails when a password is less than 8 characters' do
        password = PasswordChecker.new
        expect { password.check("Hiya") }.to raise_error "Invalid password, must be 8+ characters."
    end
end
