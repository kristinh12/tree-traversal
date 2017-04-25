require_relative 'tree'

# The "leaves" of the tree (they have no children)
deep_fifth_node = Tree.new(5, [])
eleventh_node = Tree.new(11, [])
fourth_node = Tree.new(4, [])

# The "branches" of the tree
ninth_node = Tree.new(9, [fourth_node])
sixth_node = Tree.new(6, [deep_fifth_node, eleventh_node])
seventh_node = Tree.new(7, [sixth_node])
shallow_fifth_node = Tree.new(5, [ninth_node])

# The "trunk" of the tree
trunk = Tree.new(2, [seventh_node, shallow_fifth_node])



describe "depth first search for a tree" do
  it "should return eleventh_node" do
    expect(trunk.depthSearch(11)).to eq(eleventh_node)
  end

  it "should return the deep_fifth_node" do
    expect(trunk.depthSearch(5)).to eq(deep_fifth_node)
  end

  it "should return nil for a value not in the tree" do
    expect(trunk.depthSearch(1)).to eq(nil)
  end
end

describe "breadth first seach for a tree" do
  it "should return eleventh_node" do
    expect(trunk.breadthSearch(11)).to eq(eleventh_node)
  end

  it "should return the deep_fifth_node" do
    expect(trunk.breadthSearch(5)).to eq(shallow_fifth_node)
  end

  it "should return nil for a value not in the tree" do
    expect(trunk.breadthSearch(1)).to eq(nil)
  end
end