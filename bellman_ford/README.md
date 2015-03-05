# Bellman-ford

Used to find the shortest path from a source node to every other node in any
edge-weighted digraph with negative or non-negative weights. It's slower than
Dijkstra's algorithm but it has the advantage of working with negative weights.  
Notice, though, that it won't work if the graph have a negative cycle (i.e. a
cycle whose the sum of the edges' weight is a negative value, since any path
could be made shorter just with another walk, over and over).
