#!/bin/bash
# Script runs the batch of bipartite generated graphs
# 
# Output:
# Ford fulkerson
# Scaling Ford Fulkerson
# Preflow Push

echo "Script starts now"
echo "Start" > bipartite_out2.txt

echo "bipartite_low_5" >> bipartite_out2.txt
java RunMaxFlow "Bipartite_Graph/bipartite_low_5.txt" nop >> bipartite_out2.txt

java RunMaxFlow "Bipartite_Graph/bipartite_low_15.txt" nop >> bipartite_out2.txt 

java RunMaxFlow "Bipartite_Graph/bipartite_low_25.txt" nop >> bipartite_out2.txt

java RunMaxFlow "Bipartite_Graph/bipartite_low_35.txt" nop >> bipartite_out2.txt

java RunMaxFlow "Bipartite_Graph/bipartite_low_45.txt" nop >> bipartite_out2.txt

java RunMaxFlow "Bipartite_Graph/bipartite_low_55.txt" nop >> bipartite_out2.txt

java RunMaxFlow "Bipartite_Graph/bipartite_low_65.txt" nop >> bipartite_out2.txt

java RunMaxFlow "Bipartite_Graph/bipartite_low_75.txt" nop >> bipartite_out2.txt

java RunMaxFlow "Bipartite_Graph/bipartite_low_85.txt" nop >> bipartite_out2.txt

java RunMaxFlow "Bipartite_Graph/bipartite_low_95.txt" nop >> bipartite_out2.txt

java RunMaxFlow "Bipartite_Graph/bipartite_high_5.txt" nop >> bipartite_out2.txt

java RunMaxFlow "Bipartite_Graph/bipartite_high_15.txt" nop >> bipartite_out2.txt

java RunMaxFlow "Bipartite_Graph/bipartite_high_25.txt" nop >> bipartite_out2.txt

java RunMaxFlow "Bipartite_Graph/bipartite_high_35.txt" nop >> bipartite_out2.txt

java RunMaxFlow "Bipartite_Graph/bipartite_high_45.txt" nop >> bipartite_out2.txt

java RunMaxFlow "Bipartite_Graph/bipartite_high_55.txt" nop >> bipartite_out2.txt

java RunMaxFlow "Bipartite_Graph/bipartite_high_65.txt" nop >> bipartite_out2.txt

java RunMaxFlow "Bipartite_Graph/bipartite_high_75.txt" nop >> bipartite_out2.txt

java RunMaxFlow "Bipartite_Graph/bipartite_high_85.txt" nop >> bipartite_out2.txt

java RunMaxFlow "Bipartite_Graph/bipartite_high_95.txt" nop >> bipartite_out2.txt























echo "Script has ended"
