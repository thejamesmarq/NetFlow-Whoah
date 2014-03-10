#!/bin/bash
# Script runs the batch of bipartite generated graphs
# 
# Output:
# Ford fulkerson
# Scaling Ford Fulkerson
# Preflow Push

echo "Script starts now"
echo "Start" > random_out.txt

echo "filler" >> random_out.txt
java RunMaxFlow "Random_Graph/Random Graphs/randomLow5.txt" nop >> random_out.txt

java RunMaxFlow "Random_Graph/Random Graphs/randomLow15.txt" nop >> random_out.txt 

java RunMaxFlow "Random_Graph/Random Graphs/randomLow25.txt" nop >> random_out.txt

java RunMaxFlow "Random_Graph/Random Graphs/randomLow35.txt" nop >> random_out.txt

java RunMaxFlow "Random_Graph/Random Graphs/randomLow45.txt" nop >> random_out.txt

java RunMaxFlow "Random_Graph/Random Graphs/randomLow55.txt" nop >> random_out.txt

java RunMaxFlow "Random_Graph/Random Graphs/randomLow65.txt" nop >> random_out.txt

java RunMaxFlow "Random_Graph/Random Graphs/randomLow75.txt" nop >> random_out.txt

java RunMaxFlow "Random_Graph/Random Graphs/randomLow85.txt" nop >> random_out.txt

java RunMaxFlow "Random_Graph/Random Graphs/randomLow95.txt" nop >> random_out.txt

java RunMaxFlow "Random_Graph/Random Graphs/randomHigh5.txt" nop >> random_out.txt

java RunMaxFlow "Random_Graph/Random Graphs/randomHigh15.txt" nop >> random_out.txt

java RunMaxFlow "Random_Graph/Random Graphs/randomHigh25.txt" nop >> random_out.txt

java RunMaxFlow "Random_Graph/Random Graphs/randomHigh35.txt" nop >> random_out.txt

java RunMaxFlow "Random_Graph/Random Graphs/randomHigh45.txt" nop >> random_out.txt

java RunMaxFlow "Random_Graph/Random Graphs/randomHigh55.txt" nop >> random_out.txt

java RunMaxFlow "Random_Graph/Random Graphs/randomHigh65.txt" nop >> random_out.txt

java RunMaxFlow "Random_Graph/Random Graphs/randomHigh75.txt" nop >> random_out.txt

java RunMaxFlow "Random_Graph/Random Graphs/randomHigh85.txt" nop >> random_out.txt

java RunMaxFlow "Random_Graph/Random Graphs/randomHigh95.txt" nop >> random_out.txt























echo "Script has ended"
