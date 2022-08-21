# Students and Mentors

## Problem

A group of N students prepares together for upcoming programming competitions such as Kick Start and Code Jam by Google. To help each other prepare, it was decided that each student will pick a mentor among other students. A mentor will help their mentee to solve problems, learn algorithms, track their progress, and will generally support them throughout preparation.

Each student will have exactly one mentor among all other students, and a person can be a mentor to multiple people. For every student i we know their rating Ri which approximates how good that student is at programming competitions. Because it is believed that a mentor should not be much stronger than their mentee, a student j can be a mentor of student i only if Rj≤2×Ri. Note that a mentor can even have a rating that is lower or equal to their mentee's rating.

Unsurprisingly, each student wants to have the strongest possible mentor. For each student, can you help to figure out what is the highest possible rating of a mentor they can pick?

## Input

The first line of the input gives the number of test cases, T. T test cases follow. Each test case consists of two lines.

The first line of each test case contains an integer N, representing the number of students in a group.

The second line of each test case contains N integers R1 R2 R3 … RN where Ri is a rating of the i-th student.

## Output

For each test case, output one line containing Case #x: M1 M2 M3 … MN where x is the test case number (starting from 1), and Mi is the maximum possible rating of the i-th student's mentor or −1 if there are no suitable mentors for that student.

## Limits

Memory limit: 1 GB.

1≤T≤100.

1≤Ri≤106, for all i.

### Test Set 1

Time limit: 20 seconds.

2≤N≤1000.

### Test Set 2

Time limit: 40 seconds.

2≤N≤105.
