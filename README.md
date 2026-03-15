# cl-checkpoint-sync

Pure Common Lisp implementation of Checkpoint Sync

## Overview
This library provides a robust, zero-dependency implementation of Checkpoint Sync for the Common Lisp ecosystem. It is designed to be highly portable, performant, and easy to integrate into any SBCL/CCL/ECL environment.

## Getting Started

Load the system using ASDF:

```lisp
(asdf:load-system #:cl-checkpoint-sync)
```

## Usage Example

```lisp
;; Initialize the environment
(let ((ctx (cl-checkpoint-sync:initialize-checkpoint-sync :initial-id 42)))
  ;; Perform batch processing using the built-in standard toolkit
  (multiple-value-bind (results errors)
      (cl-checkpoint-sync:checkpoint-sync-batch-process '(1 2 3) #'identity)
    (format t "Processed ~A items with ~A errors.~%" (length results) (length errors))))
```

## License
Apache-2.0
