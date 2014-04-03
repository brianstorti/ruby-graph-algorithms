# Connected Components (undirected graphs)

Definition: Nodes v and w are connected if there is a path between them.
A connected component is a maximal set of connected vertices.

Goal: Preprocess graph to answer queries of the from "is v connected to w?" in
constant time.

![image](http://f.cl.ly/items/080u0w0k0S0e3O3K3t1n/connected_components.jpg)

The relation "is connected to" is an equivalence relation:  
* Reflexive: v is connected to v  
* Symmetric: if v is connected to w, than w is connected to v  
* Transitive: if v is connected to w and w is connected to x, than v is connected to x

Implementation: For each unvisited vertex, run depth-first search to identify all vertices
discovered as part of the same component.
