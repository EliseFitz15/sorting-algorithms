#Sorting Algorithms

Our computers spend a great deal of time sorting data that make it easier for us to consume in human-readable formats. As web developers, our tools can often make it easy to overlook the value of grasping concepts like sorting and the the algorithms behind their implementations.

Algorithm efficiency is a broad topic in Computer Science and listed below are a few more good resources to learn more, but today we'll go over some of the common, simpler sorting implementations.

###Selection Sort

- Defines a sorted and unsorted portion
- First pass finds the "smallest" in the list, assuming the first is the minimum until it finds it
- Then once checking all numbers it brings the smallest to the "sorted side" which starts at the 0 index and swaps with that index
- Continues to fully sorted

###Insertion Sort

- Defines a sorted and unsorted portion
- Assumes the first item is sorted and compares the next index to it
- For each next element the elements on the sorted side move to make room for new sorted elements
- For each next number in the list we "insert" the element into the correct position in the sorted half of the array
- Continues to fully sorted

###Bubble Sort

- Starts at the beginning of the list and as it iterates, it compares two elements at a time
- It pushes the highest value towards the end of the array
- This is done until no additional swaps can be performed

###Quick Sort
*This is the sorting algorithm that the Ruby .sort method performs*

- First we identify the "pivot" as the last element in the array
- Then we look at the lowest index which is the wall
- And the left most element to the wall which will be the current element
- We start with the current element, right next tot he wall and compare it to the pivot
  - if it's larger it stays on that side of the wall
  - if it's smaller it switches with element right next to the wall and the wall moves
