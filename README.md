# Haskell Sorting Bug
This repository demonstrates a subtle bug related to Haskell's `sort` function and how it handles lists containing numbers represented as strings.  The `sort` function, when applied to a list of strings representing numbers, sorts lexicographically instead of numerically, leading to unexpected results.  The solution shows how to properly handle numerical sorting in such cases.

## Bug Description
Haskell's `Data.List.sort` function uses lexicographical ordering by default. This means that when sorting a list of strings, it orders them alphabetically.  However, if these strings represent numbers, the numerical order may differ from the lexicographical order.

## How to Reproduce
Compile and run `bug.hs`.  Observe that the numerical lists are sorted correctly.  However, the list of strings representing numbers is sorted lexicographically, which is counterintuitive in this context.

## Solution
The solution uses `map read` to convert the strings into numbers before sorting.  This ensures correct numerical ordering.
