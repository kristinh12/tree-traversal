Tree-traversal

I created two methods to search for a value within the tree data-type.  You can search depth first, which uses a recursive solution to search through each "child" before moving on to a different branch of the tree.

You can also complete a breadth search, which adds the tree to a queue, and then as each node is removed from the queue, any of it's "children" are added to the queue.

Tests: rspec search_spec.rb
