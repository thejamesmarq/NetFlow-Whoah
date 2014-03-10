import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

public class BuildGraph {
        
        public static String generate(int v, int e, int min, int max, String filename) {
                return graphBuilder(filename, ".", v, e, max, min);
        }
        public static String generate(int v, int e, int min, int max, int run) {
                return generate(v, e, min, max, run + File.separator + "ra_v" + v + "_e" + e + "_" + min + "-" + max + ".txt");
        }
        public BuildGraph(){
                
        }
        
        public static String graphBuilder(String fileName, String directory, int vertices, int dense,
                        int maxCapacity, int minCapacity) {
                Random random = new Random();
                try {
                        String dirName = directory;//
                        if (dirName.equals(""))
                                dirName = ".";

                        File outputfile = new File(dirName, fileName);
                        int[][] Graph = new int[vertices][vertices];
                        int n, m;

                        for (n = 0; n < vertices; n++)
                                for (m = n + 1; m < vertices; m++) {
                                        int randomInt = (random
                                                        .nextInt((maxCapacity - minCapacity + 1)) + minCapacity);

                                        int k = (int) (1000.0 * Math.random() / 10.0);
                                        int b = (k < dense) ? 1 : 0;
                                        if (b == 0)
                                                Graph[n][m] = Graph[m][n] = b;
                                        else
                                                Graph[n][m] = Graph[m][n] = randomInt;
                                }

                        PrintWriter output = new PrintWriter(new FileWriter(outputfile));

                        for (int x = 0; x < Graph.length; x++)
                                if (x == 0)
                                        for (int y = 0; y < Graph[x].length; y++) {
                                                String value = String.valueOf(Graph[x][y]);
                                                if (y != 0)
                                                        if (value.equals("0") == false)
                                                                output.print("s " + String.valueOf(y) + " "
                                                                                + value + "\r\n");
                                        }
                                else if (x == Graph.length - 1)
                                        for (int y = 0; y < Graph[x].length; y++) {
                                                String value = String.valueOf(Graph[x][y]);
                                                if (y != 0)
                                                        if (value.equals("0") == false)
                                                                output.print(String.valueOf(y) + " t " + value
                                                                                + "\r\n");
                                        }
                                else
                                        for (int y = 0; y < Graph[x].length; y++) {
                                                String value = String.valueOf(Graph[x][y]);
                                                if (y != 0)
                                                        if (value.equals("0") == false)
                                                                output.print(x + " " + String.valueOf(y) + " "
                                                                                + value + "\r\n");
                                        }

                        output.close();
                } catch (IOException e) {
                        System.err.println("Error opening file" + e);
                        return null;
                }
                //System.out.print("\nDone");
                return fileName;
        }
        
        public static void main(String[] args){
                generate(100, 1000, 5, 100, "hhw");
                generate(100, 1000, 80, 100, "hhld");
                generate(100, 100, 5, 100, "hlw");
                generate(100, 100, 80, 100, "hlld");
                generate(10, 100, 5, 100, "lhw");
                generate(10, 100, 80, 100, "lhld");
                generate(10, 10, 5, 100, "llw");
                generate(10, 10, 80, 100, "llld");
        }
}