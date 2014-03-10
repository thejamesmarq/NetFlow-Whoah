#!/bin/bash
# Script runs the batch of bipartite generated graphs
# 
# Output:
# Ford fulkerson
# Scaling Ford Fulkerson
# Preflow Push

echo "Script starts now"
echo "Start" > fixedDegree_out.txt

echo "filler" >> fixedDegree_out.txt
java RunMaxFlow "Fixed_Degree/Fixed Degree/fixedDegreeLow5.txt" nop >> fixedDegree_out.txt

java RunMaxFlow "Fixed_Degree/Fixed Degree/fixedDegreeLow15.txt" nop >> fixedDegree_out.txt 

java RunMaxFlow "Fixed_Degree/Fixed Degree/fixedDegreeLow25.txt" nop >> fixedDegree_out.txt

java RunMaxFlow "Fixed_Degree/Fixed Degree/fixedDegreeLow35.txt" nop >> fixedDegree_out.txt

java RunMaxFlow "Fixed_Degree/Fixed Degree/fixedDegreeLow45.txt" nop >> fixedDegree_out.txt

java RunMaxFlow "Fixed_Degree/Fixed Degree/fixedDegreeLow55.txt" nop >> fixedDegree_out.txt

java RunMaxFlow "Fixed_Degree/Fixed Degree/fixedDegreeLow65.txt" nop >> fixedDegree_out.txt

java RunMaxFlow "Fixed_Degree/Fixed Degree/fixedDegreeLow75.txt" nop >> fixedDegree_out.txt

java RunMaxFlow "Fixed_Degree/Fixed Degree/fixedDegreeLow85.txt" nop >> fixedDegree_out.txt

java RunMaxFlow "Fixed_Degree/Fixed Degree/fixedDegreeLow95.txt" nop >> fixedDegree_out.txt

java RunMaxFlow "Fixed_Degree/Fixed Degree/fixedDegreeHigh5.txt" nop >> fixedDegree_out.txt

java RunMaxFlow "Fixed_Degree/Fixed Degree/fixedDegreeHigh15.txt" nop >> fixedDegree_out.txt

java RunMaxFlow "Fixed_Degree/Fixed Degree/fixedDegreeHigh25.txt" nop >> fixedDegree_out.txt

java RunMaxFlow "Fixed_Degree/Fixed Degree/fixedDegreeHigh35.txt" nop >> fixedDegree_out.txt

java RunMaxFlow "Fixed_Degree/Fixed Degree/fixedDegreeHigh45.txt" nop >> fixedDegree_out.txt

java RunMaxFlow "Fixed_Degree/Fixed Degree/fixedDegreeHigh55.txt" nop >> fixedDegree_out.txt

java RunMaxFlow "Fixed_Degree/Fixed Degree/fixedDegreeHigh65.txt" nop >> fixedDegree_out.txt

java RunMaxFlow "Fixed_Degree/Fixed Degree/fixedDegreeHigh75.txt" nop >> fixedDegree_out.txt

java RunMaxFlow "Fixed_Degree/Fixed Degree/fixedDegreeHigh85.txt" nop >> fixedDegree_out.txt

java RunMaxFlow "Fixed_Degree/Fixed Degree/fixedDegreeHigh95.txt" nop >> fixedDegree_out.txt























echo "Script has ended"
