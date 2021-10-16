# Trash Bins

## Problem

In the city where you live, Kickstartland, there is one particularly long street with N houses on it. This street has length N, and the N houses are evenly placed along it, that is, the first house is at position 1, the second house is at position 2, and so on. The distance between any pair of houses i and j is |i−j|, where |x| denotes the absolute value of x.

Some of these houses have trash bins in front of them. That means that the owners of such houses do not have to walk when they want to take their trash out. However, for the owners of houses that do not have trash bins in front of them, they have to walk towards some house that has a trash bin in front of it, either to the left or to the right of their own house.

To save time, every house owner always takes their trash out to the trash bin that is closest to their houses. If there are two trash bins that are both the closest to a house, then the house owner can walk to any of them.

Given the number of houses N, and the description of which of these houses have trash bins in front of them, find out what is the sum of the distances that each house owner has to walk to take their trashes out. You can assume that at least one house has a trash bin in front of it.

## Input

The first line of the input gives the number of test cases, T. T test cases follow. Each test case consists of two lines.

The first line of each test case contains an integer N, denoting the number of houses on the street.

The second line of each test case contains a string S of length N, representing which houses have trash bins in front of them. If the i-th character in string S is equal to 1, then it means that the i-th house has a trash bin in front of it. Otherwise, if it is equal to 0, then it means that the i-th house does not have a trash bin in front of it.

## Output

For each test case, output one line containing Case #x: y, where x is the test case number (starting from 1) and y is the sum of the distances that each house owner has to walk to take their trashes out.

## Limits

Time limit: 20 seconds.

Memory limit: 1 GB.

1≤T≤100.

The length of S is equal to N.

Each character of S is either 0 or 1.

There is at least one character 1 in S.

### Test Set 1

1≤N≤100.

### Test Set 2

1≤N≤5×105.
