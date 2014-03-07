import java.util.ArrayList;
import java.util.HashMap;

public class RunMaxFlow {
	public static void main(String[] args) {

	IntegralDirectedGraph g = new IntegralDirectedGraph();
	SimpleGraph sg = new SimpleGraph();
	
	ReadCSV reader = new ReadCSV();
	ArrayList<String[]> edges = reader.read(args[0]);

	String out_path = args[1];

	HashMap<String, Vertex> vertices = new HashMap<String, Vertex>();

	for(String[] arr : edges) {

		g.addNode(arr[0]);
		g.addNode(arr[1]);
		g.addEdge(arr[0], arr[1], Integer.parseInt(arr[2]));

		try {
			if(!vertices.containsKey(arr[0])) {
				vertices.put(arr[0], sg.insertVertex(new VertexData(false), arr[0]));
			}
			if(!vertices.containsKey(arr[1])) {
				vertices.put(arr[1], sg.insertVertex(new VertexData(false), arr[1]));
			}
			sg.insertEdge(vertices.get(arr[0]), vertices.get(arr[1]), new EdgeData(Integer.parseInt(arr[2]), 0), arr[0]+arr[1]);
		} catch(Exception e) {
			System.out.println("error making graph");
			return;
		}
	}
	int sum = 0;
	
	FordFulkerson f = new FordFulkerson();
	long start_time = System.nanoTime();
	FlowNetwork ff_max_flow = f.maxFlow(g,"s","t");
	System.out.println((System.nanoTime() - start_time)/ 1000000000.0);

	FordFulkersonScaling sf = new FordFulkersonScaling();
	start_time = System.nanoTime();
	FlowNetwork sff_max_flow = sf.maxFlow(g,"s","t");
	System.out.println((System.nanoTime() - start_time)/ 1000000000.0);

	PreflowPush pfp = new PreflowPush(sg, vertices.get("s"), vertices.get("t"));
	pfp.initialize();
	start_time = System.nanoTime();
	int flow = pfp.computeMaxFlow();
	System.out.println((System.nanoTime() - start_time)/ 1000000000.0);
	}
}