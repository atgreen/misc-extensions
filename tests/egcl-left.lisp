(eval-when (:compile-toplevel :load-toplevel :execute)
  (defpackage #:egcl-gmap-left (:use #:cl)))
(gmap:def-arg-type egcl-gmap-left::items (items)
  `(,items #'null #'car #'cdr))
