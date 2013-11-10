# Dijkstra

Used to find the shortest path from a source node to every other node in any
edge-weighted digraph with non-negative weights (check the Bellman–Ford
algorithm for shortest path with negative weights).

Implementation:
* Consider vertices in increasing order of distance from the source.
* Add vertice to three and relax all edges pointing from that vertice.
