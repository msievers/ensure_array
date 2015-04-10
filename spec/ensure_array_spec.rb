describe EnsureArray do
  context "if a literal is given" do
    it "returns an array containing this literal" do
      expect(EnsureArray("foo")).to eq(["foo"])
      expect(EnsureArray(:foo)).to eq([:foo])
      expect(EnsureArray(1)).to eq([1])
      expect(EnsureArray(1.23)).to eq([1.23])
    end
  end

  context "if an array is given" do
    it "returns the given array" do
      expect(EnsureArray(array = [1,2,3])).to be_equal(array)
    end
  end

  context "if nil is given" do
    context "if no nil value is given" do
      it "returns an empty array" do
        expect(EnsureArray(nil)).to eq([])
      end
    end

    context "if a nil value is given" do
      it "returns the given nil value" do
        expect(EnsureArray(nil, "foo")).to eq("foo")
      end
    end
  end
end
