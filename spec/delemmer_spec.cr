require "./spec_helper"

describe Delemmer do
  describe "#lemma" do
    it "returns a lemma of a given word" do
      Delemmer.lemmatize("Bücher").should eq "Buch"
      Delemmer.lemmatize("BÜCHER").should eq "Buch"
      Delemmer.lemmatize("bücher").should eq "Buch"

      Delemmer.lemmatize("Überraschungen").should eq "Überraschung"
      Delemmer.lemmatize("ÜBERRASCHUNGEN").should eq "Überraschung"

      Delemmer.lemmatize("Gesagt").should eq "sagen"
      Delemmer.lemmatize("sagten").should eq "sagen"
      Delemmer.lemmatize("sagen").should eq "sagen"
    end
  end
end
