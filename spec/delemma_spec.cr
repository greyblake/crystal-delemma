require "./spec_helper"

describe Delemma do
  describe "#lemmatize" do
    it "returns a lemma of a given word" do
      Delemma.lemmatize("Bücher").should eq "Buch"
      Delemma.lemmatize("BÜCHER").should eq "Buch"
      Delemma.lemmatize("bücher").should eq "Buch"

      Delemma.lemmatize("Überraschungen").should eq "Überraschung"
      Delemma.lemmatize("ÜBERRASCHUNGEN").should eq "Überraschung"

      Delemma.lemmatize("Gesagt").should eq "sagen"
      Delemma.lemmatize("sagten").should eq "sagen"
      Delemma.lemmatize("sagen").should eq "sagen"
    end
  end
end
