require "../spec_helper"

describe "Easy" do
  describe ".version" do
    it "returns human readable string with the version number of libcurl" do
      String.new(Easy.version).should match(/libcurl/)
    end
  end

  describe ".getdate" do
    context "when date is valid" do
      it "returns number of seconds since epoch" do
        Easy.getdate("Sun/Nov/6/94/GMT", Pointer(Int64).malloc(1_i64)).should eq 784080000
        Easy.getdate("Sun, 06 Nov 1994 08:49:37 GMT", nil).should eq 784111777
      end
    end

    context "when date is invalid" do
      it "returns -1" do
        Easy.getdate("invalid-date", nil).should eq -1
      end
    end
  end
end
