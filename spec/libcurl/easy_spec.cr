require "../spec_helper"

describe "Easy" do
  describe ".init" do
    it "returns Curl handle" do
      handle = Easy.init
      handle.should_not be_nil
      Easy.cleanup handle
    end
  end
end
