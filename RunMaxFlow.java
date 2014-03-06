public class RunMaxFlow {
	public static void main(String[] args) {

	IntegralDirectedGraph g = new IntegralDirectedGraph();
	g.addNode("s");
	g.addNode("t");
	g.addNode("x");
	g.addEdge("s", "x", 100);
	g.addEdge("s", "t",10);
	
	FordFulkerson f = new FordFulkerson();
	System.out.println(f.maxFlow(g, "s", "t"));
	}
}