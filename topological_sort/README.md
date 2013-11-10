# Topological sort (DAGs)

Goal: Given a set of tasks to be completed with precedence constraints, in
which order should we schedule the tasks. In this example application, the
vertices would be the tasks and the edges direction the precedence constraints.

It's important to notice that the topological sort works just for DAGs
(directed acyclic graphs).

Implementation: The implementation is pretty
straightforward. I just run a recursive depth-first
sort for each unvisited vertice in the graph and when
the stack is done, I add the vertice to my topological
ordered list.
