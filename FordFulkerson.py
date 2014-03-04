#Implementation of Ford Fulkerson
#Author - Wikipedia
#Modified by - James Marquardt

import sys, csv, time

class Edge(object):
    def __init__(self, u, v, w):
        self.source = u
        self.sink = v  
        self.capacity = w
    def __repr__(self):
        return "%s->%s:%s" % (self.source, self.sink, self.capacity)
 
class FlowNetwork(object):
    def __init__(self):
        self.adj = {}
        self.flow = {}
 
    def add_vertex(self, vertex):
        self.adj[vertex] = []
 
    def get_edges(self, v):
        return self.adj[v]
 
    def add_edge(self, u, v, w=0):
        if u == v:
            raise ValueError("u == v")
        edge = Edge(u,v,w)
        redge = Edge(v,u,0)
        edge.redge = redge  #redge is not defined in Edge class
        redge.redge = edge
        self.adj[u].append(edge)
        self.adj[v].append(redge)
        self.flow[edge] = 0
        self.flow[redge] = 0
 
    def find_path(self, source, sink, path):
        if source == sink:
            return path
        for edge in self.get_edges(source):
            residual = edge.capacity - self.flow[edge]
            if residual > 0 and not edge in path:
                result = self.find_path( edge.sink, sink, path + [edge]) 
                if result != None:
                    return result
 
    def max_flow(self, source, sink):
        path = self.find_path(source, sink, [])
        while path != None:
            residuals = [edge.capacity - self.flow[edge] for edge in path]
            flow = min(residuals)
            for edge in path:
                self.flow[edge] += flow
                self.flow[edge.redge] -= flow
            path = self.find_path(source, sink, [])
        return sum(self.flow[edge] for edge in self.get_edges(source))

#Main will read path to graph file from command line, and print max flow from FF and runtime.
if  __name__ =='__main__':
    g = FlowNetwork()
    vertex_set = set()
    edges = []
    with open(sys.argv[1]) as graph_file:
        reader = csv.reader(graph_file, delimiter = "\t")

        for line in reader:
            if not line[1] in vertex_set:
                vertex_set.add(line[1])
                g.add_vertex(line[1])
            if not line[2] in vertex_set:
                vertex_set.add(line[2])
                g.add_vertex(line[2])

            edges.append(line[1:])

        for edge in edges:
            g.add_edge(edge[0], edge[1], int(edge[2]))
    start_time = time.clock()
    print g.max_flow('s','t')
    print time.clock() - start_time