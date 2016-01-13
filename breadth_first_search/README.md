# Breadth-first search (BFS)

Breadth-first search (BFS) is a strategy for searching in a graph.

The BFS begins at a root node and inspects all the neighboring nodes. Then for
each of those neighbor nodes in turn, it inspects their neighbor nodes which
were unvisited, and so on.

This image shows the order in which the nodes are expanded:  
![image](http://upload.wikimedia.org/wikipedia/commons/3/33/Breadth-first-tree.svg)

Breadth-first search is usually used to find the shortest path between two nodes
in a graph (considering only the number of edges, it won't work for weighted graphs)

The steps are quite simple:
* Put the source node into a queue and mark it as visited
* Repeat until the queue is empty:
  - Remove the least recently added node n
  - Add each of n's unvisited neighbors to the queue and mark them as visited

## Comparing Breadth-first search and Depth-first search

Both algorithms are used with the same purpose: Search a node in a graph.  
The BFS has the bonus advantage of finding the shortest path, while the DFS 
makes no guarantees about that.  
If findind the shortest path is not the goal, both DFS and BFS have advantages
and disadvantages, depending on the data that you are looking for.  
A commomly used example is the search in a family tree. If the person that you are
looking for is alive, then we can assume that this person (node) will be in the bottom
of the graph. That means that the BFS would probably take longer to find this node
than the DFS. If the person is likely closer to the top, the BFS would be more efficient
is most cases.
