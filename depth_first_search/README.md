# Depth-first search (DFS)

Depth-first search (DFS) is a strategy for searching in a graph.

The DFS starts at the source node and explores as far as possible along each
branch before backtracking. Although it finds a path from a source to a target node,
if you are interested in finding the shortest path, this is not the way to go.

This image shows the order in which the nodes are expanded:  
![image](http://upload.wikimedia.org/wikipedia/commons/1/1f/Depth-first-tree.svg)


## Comparing Depth-first search and Breadth-first search

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
