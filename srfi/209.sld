(define-library (srfi 209)
  (import (scheme base)
          (srfi 1)
          (srfi 128)
          (srfi 146)
          (srfi 146))

  (cond-expand
    ((library (srfi 145))
     (import (srfi 145)))
    (else
     (begin
      (define (assume _) #t))))

  (cond-expand
    ((library (srfi 162))
     (import (srfi 162)))
    (else
     (begin
      (define real-comparator
        (make-comparator real? = < number-hash)))))

  (export enum-type? enum? enum-type-contains? enum=? enum<? enum>?
          enum<=? enum>=?

          make-enum-type

          enum-type enum-name enum-ordinal enum-value

          enum-name->enum enum-ordinal->enum enum-name->ordinal
          enum-name->value enum-ordinal->name enum-ordinal->value

          enum-type-size enum-min enum-max enum-type-enums
          enum-type-names enum-type-values

          enum-next enum-prev

          enum-type->enum-set enum-set list->enum-set enum-set-projection
          enum-set-copy
          enum-empty-set

          enum-set? enum-set-contains? enum-set=?
          enum-set-empty? enum-set-disjoint? enum-set<? enum-set>?
          enum-set<=? enum-set>=? enum-set-any? enum-set-every?

          enum-set-adjoin! enum-set-delete! enum-set-delete-all!
          enum-set-adjoin enum-set-delete enum-set-delete-all

          enum-set-size enum-set->list enum-set-map->list enum-set-for-each
          enum-set-filter enum-set-remove
          enum-set-count
          enum-set-fold

          enum-set-union! enum-set-intersection! enum-set-difference!
          enum-set-xor!

          make-enum-comparator
          )

  (include "209.scm"))
