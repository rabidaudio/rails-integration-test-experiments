require 'spec_helper'

describe User do

     before { @me = create(:user, active: true) }

    it { should validate_presence_of :username }

    it { should allow_value("abc123").for(:username) }

    #it should not allow spaces
    it { should_not allow_value("bertrand russell").for(:username) }

    #it should not allow symbols
    it { should_not allow_value("!@?").for(:username) }

    #it should not allow usernames less than 3 chars
    it { should_not allow_value("aa").for(:username) }

    it { should have_secure_password }

    it { should ensure_length_of(:password).is_at_least(6).is_at_most(50) }

    it { should validate_uniqueness_of(:username) }

    it { should respond_to(:active?) }
    it "should return true for active users" do
        expect(@me.active?).to eq true
    end

    it "should return false for inactive users" do
        user = create(:user, active: false)
        expect(user.active?).to eq false
    end

    it { should respond_to(:authenticate) }

    describe "authenticate method" do
      before {
        @me = create(:user, active: true)
        @found_user = User.find_by(username: @me.username)
      }

      it "allows a valid valid password" do
        expect(@found_user.authenticate("password")).to eq(@found_user)
      end

      it "doesn't allow an invalid password" do
        user_for_invalid_password = @found_user.authenticate("invalid")
        expect(user_for_invalid_password).to be_false
      end

    end
end