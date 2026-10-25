# EGCL support

NEW-LET recognizes user DEFTYPE names through EGCL's bootstrap type-expander
registry, in addition to standard types and classes. This uses an internal
EGCL registry and may need updating if its representation changes.

GMAP uses stable, interned expander names on EGCL. Each identity includes the
argument/result kind and the defining type symbol's package and name; resetting
GENSYM counters in separately compiled source files cannot merge unrelated types.
Type names must be interned symbols on EGCL.

This works around EGCL's compiled uninterned function identity issue, tracked as
`bliss-yhct8.4.2`. It does not fix that runtime issue for other libraries.

Run from this checkout, with ASDF available:

```sh
egcl --no-init --load egcl-tests.lisp
```

The tests cover custom type declarations, GMAP list iteration, and two separately
compiled type definitions with equal GENSYM counter starts and identical symbol
names in distinct packages. Run again with the same ASDF output cache to exercise
loading the compiled library in a fresh process. Fixture compilation writes FASLs
beside `tests/egcl-left.lisp` and `tests/egcl-right.lisp`.
