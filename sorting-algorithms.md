#Sorting Algorithms

Our computers spend a great deal of time sorting data that make it easier for us to consume in human-readable formats. As web developers, our tools can often make it easy to overlook the value of grasping concepts like sorting and the the algorithms behind their implementations.

An algorithm remember is just a step-by-step procedure for accomplishing a task. The task we are talking about is sorting any collection of items.

Algorithm efficiency and specifically sorting algorithms is a much broader topic in Computer Science but today I'm just going to visually breakdown how some of the simpler sorting algorithms work.

So what we'll do is talk about four different algorithms, first I'll explain and walk us through it visually, then we will take a look at some ruby code for that algorithm. Then we will run a benchmark of all of the algorithms to compare times.

###Selection Sort

- Defines a sorted and unsorted portion
- First pass finds the "smallest" in the list, and swap it with the element at index 0 and that then becomes the sorted portion.
- We continue this process starting with the first element in the unsorted portion and checking for the new "minimum". Once finding it we swap the first unsorted element with the "new minimum" so that it becomes part of the sorted portion.
- Continues to fully sorted

###Insertion Sort

- Defines a sorted and unsorted portion
- Assumes the first item is sorted and compares the next index to it (saves us one iteration through)
- Now we iterate over the sorted portion and compare the "to be sorted" number against all of the sorted elements and then insert it into it's place and move the other sorted elements down.
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
- We start with the current element, right next to the wall and compare it to the pivot
  - if it's larger it stays on that side of the wall
  - if it's smaller it switches with element right next to the wall and the wall moves
