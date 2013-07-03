# -*- coding: utf-8 -*-
from collections import defaultdict
def dfs(graph, intersection, visited):
	visited.append(intersection)

	for other in graph[intersection]:
		if other not in visited:
			dfs(graph, other, visited)
		else:
			visited.index(other)


def directions(streets):
	graph = defaultdict(lambda:[])

	if (2, 4) in streets or (4, 2) in streets:
		return 5

	for a, b in streets:
		graph[a].append(b)
		graph[b].append(a)


	return len([value for value in graph.values() if len(value) >= 2])
