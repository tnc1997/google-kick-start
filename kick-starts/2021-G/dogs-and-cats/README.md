# Dogs and Cats

## Problem

You work for an animal shelter and you are responsible for feeding the animals. You already prepared D portions of dog food and C portions of cat food.

There are a total of N animals waiting in a line, some of which are dogs and others are cats. It might be possible that all the animals in the line are dogs or all the animals are cats. A string S of N characters C and D represents the order of cats and dogs in the line. The i-th character is equal to C if the i-th animal in the line is a cat. Similarly, the i-th character is equal to D if the i-th animal in the line is a dog.

The animals are fed in the order they stay in the line. Each dog eats exactly 1 portion of dog food and similarly each cat eats exactly 1 portion of cat food. Moreover, you have extra portions of cat food. Every time a dog eats food, you bring M extra portions of cat food for cats.

Animals have to be fed in the order they wait in line and an animal can only eat if the animal before it has already eaten. That means that if you run out of dog (or cat) food portions and a dog (or a cat) is about to get fed, the line will not move, as all the animals will wait patiently.

You need to determine if in this scenario all the dogs in the line will be fed. Note that this means that some cats might remain in the line, but worry not, you will eventually feed them later!

## Input

The first line of the input gives the number of test cases, T. T test cases follow.

The first line of each test case contains four integers N, D, C, and M: the number of animals, the initial number of dog food portions, the initial number of cat food portions, and the additional portions of cat food that we add after a dog eats a portion of dog food, respectively.

The next line contains a string S of length N representing the arrangement of animals.

## Output

For each test case, output one line containing Case #x: y, where x is the test case number (starting from 1) and y is YES if all the dogs will be fed and NO otherwise.

## Limits

Memory limit: 1 GB.

1≤T≤100.

1≤N≤104.

0≤D,C≤106.

S consists of only characters C and D.

### Test Set 1

Time limit: 20 seconds.

M=0

### Test Set 2

Time limit: 40 seconds.

0≤M≤106.
