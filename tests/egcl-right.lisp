(eval-when (:compile-toplevel :load-toplevel :execute)
  (defpackage #:egcl-gmap-right (:use #:cl)))
(gmap:def-arg-type egcl-gmap-right::items (items)
  `((reverse ,items) #'null #'car #'cdr))
