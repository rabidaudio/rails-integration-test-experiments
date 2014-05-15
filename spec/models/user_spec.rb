require 'spec_helper'

describe User do
    it "should let me set a name" do
        me = User.new(name: "bertrand russell")
        expect(me.name).to eq("bertrand russell")
    end
end