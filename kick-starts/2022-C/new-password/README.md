# New Password

## Problem

A company named Gooli has issued a new policy that their employees account passwords must contain:

1. At least 7 characters.
1. At least one uppercase English alphabet letter.
1. At least one lowercase English alphabet letter.
1. At least one digit.
1. At least one special character. There are four special characters: #, @, *, and &.

The company has asked all the employees to change their passwords if the above requirements are not satisfied. Charles, an employee at Gooli, really likes his old password. In case his old password does not satisfy the above requirements, Charles will fix it by appending letters, digits, and special characters. Can you help Charles to find the shortest possible new password that satisfies his company's requirements?

## Input

The first line of the input gives the number of test cases, T. T test cases follow. Each test case consists of two lines. The first line of each test case contains an integer N, denoting the length of the old password. The second line of each test case contains the old password of length N. Old password contains only digits, letters, and special characters.

## Output

For each test case, output one line containing Case #x: y, where x is the test case number (starting from 1) and y is a valid new password, obtained by possibly fixing the old password in the way that Charles wants and satisfying the company's requirements.

It is guaranteed that at least one solution exists. If there are multiple solutions, you may output any one of them.

## Limits

Time limit: 20 seconds.

Memory limit: 1 GB.

1≤T≤100.

### Test Set 1

7≤N≤104.

The old password contains only digits.

### Test Set 2

1≤N≤104.

The old password contains only digits, letters, and special characters.
