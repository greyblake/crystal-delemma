require "./spec_helper"

describe Delemmer do
  describe "#lemme" do
    it "returns lemme" do
      Delemmer.lemme("Bücher").should eq "Buch"
      Delemmer.lemme("BÜCHER").should eq "Buch"
      Delemmer.lemme("bücher").should eq "Buch"

      Delemmer.lemme("Überraschungen").should eq "Überraschung"
      Delemmer.lemme("ÜBERRASCHUNGEN").should eq "Überraschung"
    end
  end
end
