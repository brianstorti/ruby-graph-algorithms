# Strong Components (Digraph)

This implementation uses the Kosaraju's algorithm.

Definition: Vertices v and w are considered to be strongly connected if
there is a directed path from v to w **and** a directed path from w to v.

![image](http://f.cl.ly/items/3u153x2i1Y3S1h2j3H1r/strong_components.png)

Strong connectivity is an equivalence relation:
* v is strongly connected to v.
* if v is strongly connected to w, then w is strongly connected to v.
* if v is strongly connected to w, and w to x, then v is strongly connected to x.

Reverse graph: Strong components in *G* are the same as in in *Gr (reverse)*
