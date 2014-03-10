#!/bin/bash
# Script runs the batch of bipartite generated graphs
# 
# Output:
# Ford fulkerson
# Scaling Ford Fulkerson
# Preflow Push

echo "Script starts now"
echo "Start" > mesh_out.txt

echo "..." >> mesh_out.txt
java RunMaxFlow "Mesh_Graph/graphs/mesh_lowrow_5.txt" nop  >> mesh_out.txt

java RunMaxFlow "Mesh_Graph/graphs/mesh_lowrow_15.txt" nop  >> mesh_out.txt 

java RunMaxFlow "Mesh_Graph/graphs/mesh_lowrow_25.txt" nop  >> mesh_out.txt

java RunMaxFlow "Mesh_Graph/graphs/mesh_lowrow_35.txt" nop  >> mesh_out.txt

java RunMaxFlow "Mesh_Graph/graphs/mesh_lowrow_45.txt" nop  >> mesh_out.txt

java RunMaxFlow "Mesh_Graph/graphs/mesh_lowrow_55.txt" nop  >> mesh_out.txt

java RunMaxFlow "Mesh_Graph/graphs/mesh_lowrow_65.txt" nop  >> mesh_out.txt

java RunMaxFlow "Mesh_Graph/graphs/mesh_lowrow_75.txt" nop  >> mesh_out.txt

java RunMaxFlow "Mesh_Graph/graphs/mesh_lowrow_85.txt" nop  >> mesh_out.txt

java RunMaxFlow "Mesh_Graph/graphs/mesh_lowrow_95.txt" nop  >> mesh_out.txt

java RunMaxFlow "Mesh_Graph/graphs/mesh_highrow_5.txt" nop  >> mesh_out.txt

java RunMaxFlow "Mesh_Graph/graphs/mesh_highrow_15.txt" nop  >> mesh_out.txt

java RunMaxFlow "Mesh_Graph/graphs/mesh_highrow_25.txt" nop  >> mesh_out.txt

java RunMaxFlow "Mesh_Graph/graphs/mesh_highrow_35.txt" nop  >> mesh_out.txt

java RunMaxFlow "Mesh_Graph/graphs/mesh_highrow_45.txt" nop  >> mesh_out.txt

java RunMaxFlow "Mesh_Graph/graphs/mesh_highrow_55.txt" nop  >> mesh_out.txt

java RunMaxFlow "Mesh_Graph/graphs/mesh_highrow_65.txt" nop  >> mesh_out.txt

java RunMaxFlow "Mesh_Graph/graphs/mesh_highrow_75.txt" nop  >> mesh_out.txt

java RunMaxFlow "Mesh_Graph/graphs/mesh_highrow_85.txt" nop  >> mesh_out.txt

java RunMaxFlow "Mesh_Graph/graphs/mesh_highrow_95.txt" nop  >> mesh_out.txt























echo "Script has ended"
