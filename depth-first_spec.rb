describe "depth first search for a tree" do
  it "should return eleventh_node" do
    expect(depthSearch(trunk, 11)).to eq(eleventh_node)
  end

  it "should return the deep_fifth_node" do
    expect(depthSearch(trunk, 5)).to eq(deep_fifth_node)
  end
end

describe "breadth first seach for a tree" do
  it "should return eleventh_node" do
    expect(breadthSearch(trunk, 11)).to eq(eleventh_node)
  end

  it "should return the deep_fifth_node" do
    expect(breadthSearch(trunk, 5)).to eq(shallow_fifth_node)
  end
end