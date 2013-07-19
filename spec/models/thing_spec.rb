require 'spec_helper'

describe Thing do
  describe "#foo" do
    it "returns bar" do
      Thing.new.foo.should == "bar"
    end
  end
end
