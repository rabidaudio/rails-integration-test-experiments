require 'spec_helper'

describe User do
    it "should have a name" do
        me = User.new(name: "bertrand russell")
        expect(me.name).to eq("bertrand russell")
    end

    it { should validate_presence_of :name }
end