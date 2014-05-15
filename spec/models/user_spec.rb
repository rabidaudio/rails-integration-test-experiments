require 'spec_helper'


describe User do

    it { should validate_presence_of :username }

    it { should allow_value("abc").for(:username) }

    #it should not allow spaces
    it { should_not allow_value("bertrand russell").for(:username) }

    #it should not allow symbols
    it { should_not allow_value("!@?").for(:username) }

    #it should not allow usernames less than 3 chars
    it { should_not allow_value("aa").for(:username) }

    it { should have_secure_password }

    it { should validate_uniqueness_of(:username) }

end