# Post-Order Tree Traversal - Multi-Paradigm Implementation

Post-order tree traversal implemented in three programming paradigms.

## Post-Order Traversal

Visits nodes in order: left subtree → right subtree → root

Example tree:
```
        1
       / \
      2   3
     / \   \
    4   5   6
```

Result: **4 5 2 6 3 1**

## Implementations

### 1. Imperative (Java) - PostOrder.java
- Object-oriented with mutable state
- Side effects (prints results)
- Explicit control flow

### 2. Functional (ML) - post-order.ml  
- Immutable data structures
- Pattern matching
- Pure functions return lists

### 3. Logic Programming (Prolog) - post-order.pl
- Declarative rules and facts
- Unification and backtracking
- Relational approach

## Usage

- **Java**: `javac PostOrder.java && java PostOrder`
- **ML**: Load in SML/NJ interpreter
- **Prolog**: Query in SWI-Prolog

All implementations process the same tree structure and produce equivalent results.
