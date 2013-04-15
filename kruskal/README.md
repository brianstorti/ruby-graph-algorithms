# Kruskal algorithm

The Kruskal's algorithm is used to compute the [minimum spanning tree (MST)](http://en.wikipedia.org/wiki/Minimum_spanning_tree)
of a graph. It's is classified as a greedy algorithm.

Implementation: First we sort the edges by weight, then we analyze the edges in
this order (smallest weight first). If the nodes of the current edge
are still not connected, we add this edge to the MST. This last verification
ensure that we won't create a cycle. To check/connect the nodes I'm using [Union-find](http://www.algorithmist.com/index.php/Union_Find).
